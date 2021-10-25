//
//  Fashcard.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 13/9/21.
//

import SwiftUI
import CoreHaptics

struct FlashcardView: View {
    
    let flashcard: Flashcard
	let category: Category
	let color: Color
    
    @State private var engine: CHHapticEngine?
    @State var wordButtonAnimation = false
    
    var body: some View {
        ZStack{
            BackgroundView(imageName: ImageAsset.backgroundMarketFlashcard)
        
            HStack{
                Image(flashcard.name)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .border(color, width: 12)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                
                Spacer()
                    .frame(width: 150)
                
                VStack(alignment: .center, spacing: 50){
        
                    WordButton(word: flashcard.name,
                               color: color,
                               press: wordButtonAnimation) {
                        wordButtonAnimation.toggle()
                    }
                    
//                    .onAppear(perform: prepareHaptics)
//                    .onTapGesture(perform: complexSuccess)
//
                    HStack(spacing: 70){
                        
                        NavigationLink(destination: FindAndMatchView()) {
                            RoundedButton(sfSymbol: SFSymbols.photos,
                                          color: color)
                        }
                        
                        NavigationLink(destination: PuzzleViewS(syllables: 2)) {
                            RoundedButton(sfSymbol: SFSymbols.puzzle,
                                          color: color)
                        }
                    }
                }
                .offset(x: -80)
            }
            .background(Color(.white))
            .border(color, width: 12)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
        }
        
    }
    
    
    func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

        do {
            self.engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine: \(error.localizedDescription)")
        }
    }
    
    
    func complexSuccess() {
        // make sure that the device supports haptics
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        var events = [CHHapticEvent]()

        // create one intense, sharp tap
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        events.append(event)

        // convert those events into a pattern and play it immediately
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play pattern: \(error.localizedDescription).")
        }
    }

    
}

struct Fashcard_Previews: PreviewProvider {
    static var previews: some View {
		FlashcardView(flashcard: Flashcard(name: "apple", ahapWave: "", ahapFile: ""),
					  category: .market, color: Color.market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}






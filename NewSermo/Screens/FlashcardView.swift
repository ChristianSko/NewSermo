//
//  Fashcard.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 13/9/21.
//

import SwiftUI
import CoreHaptics

struct FlashcardView: View {
    
    let color: Color
    
    
    @State private var engine: CHHapticEngine?
    @State var animation = false
    
    var body: some View {
        ZStack{
            BackgroundView(imageName: ImageAsset.backgroundMarketFlashcard)
                .edgesIgnoringSafeArea(.all)
        
            HStack{
                Image("apple")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .border(color, width: 12)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                
                Spacer()
                    .frame(width: 150)
                
                VStack(alignment: .center, spacing: 50){
        
                    WordButton(word: "Apple",
                               color: color,
                               press: animation) {
                        animation.toggle()
                    }
                    
//                    .onAppear(perform: prepareHaptics)
//                    .onTapGesture(perform: complexSuccess)
//
                    HStack(spacing: 70){
                        
                        NavigationLink(destination: FindAndMatchView()) {
                            RoundedButton(sfSymbol: SFSymbols.photos,
                                          color: color)
                        }
                        
                        NavigationLink(destination: PuzzleView()) {
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
        FlashcardView(color: .blue)
    }
}


struct WordButton: View {
    
    let word: String
    let color: Color
    @GestureState var press = false
    let action: (() -> Void)
    
    var body: some View {
        
        Button(action: action) {
            Text(word)
                .font(.title)
                .frame(width: 240, height: 50)
                .foregroundColor(.white)
                .background(color)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                .scaleEffect(press ? 1.5 : 1)
                .animation(.spring())
                .gesture(
                    LongPressGesture().updating($press) { currenState, gestureState, transaction in
                        gestureState = currenState
                    }
                )
        }
    }
}


struct RoundedButton: View {
    
    let sfSymbol: String
    let color: Color
    
    var body: some View {
        
        Image(systemName: sfSymbol)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 82,
                   height: 82)
            .background(color)
            .clipShape(Circle())
            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
    }
}

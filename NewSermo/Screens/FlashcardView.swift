//
//  Fashcard.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 13/9/21.
//

import SwiftUI
import CoreHaptics
import AVFoundation

struct FlashcardView: View {
    
    let flashcard: Flashcard
	let category: Category
	let color: Color
    
    @State private var engine: CHHapticEngine?
    @State var wordButtonAnimation = false
	@GestureState var press = false
	
    
    var body: some View {
        ZStack{
            BackgroundView(imageName: "backgroundmixflashcard-\(category)")
        
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
                               press: wordButtonAnimation) 

                    HStack(spacing: 70){
                        
						NavigationLink(destination: FindAndMatchView(flashcard: flashcard,
																	 category: category, color: color)) {
                            RoundedButton(sfSymbol: SFSymbols.photos,
                                          color: color)
                        }
                        
						NavigationLink(destination: PuzzleViewS(syllables: 2, flashcard: flashcard, category: category, color: color)) {
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

}

struct Fashcard_Previews: PreviewProvider {
    static var previews: some View {
		FlashcardView(flashcard: Flashcard(name: "apple", ahapWave: "", ahapFile: "", syllables: 2),
					  category: .market, color: Color.market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}






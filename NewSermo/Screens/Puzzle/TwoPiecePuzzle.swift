//
//  PuzzleView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 16/9/21.
//

import SwiftUI

struct TwoPiecePuzzle: View {
    
	let flashcard: Flashcard
	let category: Category
	
    @State var rightPuzzleAnimation = false
    @State var leftPuzzleAnimation = false
    @State var showStars = false
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .bottomTrailing){
                ZStack {
                    ZStack{
                        BackgroundView(imageName: "backgroundpuzzle-\(category)" )
                        
                        
                        HStack(spacing: 30) {
                            
                            
							MaskedPuzzleImage(imageName: flashcard.name,
                                              color: Color.blue,
                                              cellSize: 200,
                                              cornerRadius: 10,
                                              borderWidth: 10,
                                              maskImageName: "puzzle-2pc-1")
                                .scaleEffect(leftPuzzleAnimation ? 1.5 : 1)
                                .offset(x: leftPuzzleAnimation ? 280 : 0)
                                .onTapGesture {
                                    withAnimation {
                                        leftPuzzleAnimation.toggle()
                                        if rightPuzzleAnimation && leftPuzzleAnimation {
                                            withAnimation {
                                                showStars.toggle()
                                            }
                                        }
                                    }
                                }
                            
                            
                                Spacer()
                                .frame(width: 300,
                                       height: 300)
                                                                                    
                            
							MaskedPuzzleImage(imageName: flashcard.name,
                                              color: Color.blue,
                                              cellSize: 200,
                                              cornerRadius: 10,
                                              borderWidth: 10,
                                              maskImageName: "puzzle-2pc-2")
                            
                                .scaleEffect(rightPuzzleAnimation ? 1.5 : 1)
                                .offset(x: rightPuzzleAnimation ? -280 : 0)
                            
                                .onTapGesture {
                                    withAnimation(.linear(duration: 0.2)) {
                                        rightPuzzleAnimation.toggle()
                                        if rightPuzzleAnimation && leftPuzzleAnimation {
                                            withAnimation(.easeIn(duration: 0.5)) {
                                                showStars.toggle()
                                            }
                                        }
                                    }
                                }
                        }
                        
                    }
                    
                    CellView(imageName: flashcard.name,
                             color: Color.blue,
                             cellSize: 300,
                             cornerRadius: 10,
                             borderWidth: 10)
                        .opacity(0.1)
                        .offset(y: -30)
                    
                        Image("star-puzzle-black")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 370, height: 300)
                            .scaleEffect(showStars ? 1.2 : 0.5)
                            .rotationEffect(showStars ? .degrees(180) : .degrees(0))
                            .opacity(showStars ? 1 : 0)
                        
					Text(flashcard.name.capitalized)
                            .font(.system(size: 48))
                            .fontWeight(.heavy)
                            .opacity(showStars ? 1 : 0)
                    
                    
                }
                
                InfoButton(action: {print("show modal")})
            }
            RestartButton(action: {
                leftPuzzleAnimation = false
                rightPuzzleAnimation = false
                showStars = false
            })
        }
    }
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
		TwoPiecePuzzle(flashcard: Flashcard(name: "banana", ahapWave: "", ahapFile: "", syllables: 2), category: .market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

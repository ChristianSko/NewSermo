//
//  OnePiecePuzzle.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 22/9/21.
//

import SwiftUI

struct OnePiecePuzzle: View {
    
    let flashcard: Flashcard
	let category: Category
	let color: Color
	
    @State var leftPuzzleAnimation = false
    @State var showStars = false
    @State var scale: CGFloat = 1
	@State var showInfo = false
	
    
    var body: some View {
		ZStack {
			ZStack(alignment: .bottomLeading){
				ZStack(alignment: .bottomTrailing){
					ZStack{
						BackgroundView(imageName: "backgroundpuzzle-\(category)" )
						
						
						HStack(spacing: 30) {
							CellView(imageName: flashcard.name,
									 color: color,
									 cellSize: 200,
									 cornerRadius: 10,
									 borderWidth: 10)
								.scaleEffect(leftPuzzleAnimation ? 1.5 : 1)
								.offset(x: leftPuzzleAnimation ? 310 : 0 ,
										y: leftPuzzleAnimation ? -110 : -60)
								.onAppear(perform: HapticEngine.shared.createEngine)
								.onTapGesture {
									HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)")
									withAnimation(.linear(duration: 0.2)) {
										leftPuzzleAnimation.toggle()
										if leftPuzzleAnimation {
											withAnimation(.easeIn(duration: 0.5)) {
												showStars.toggle()
											}
										}
									}
								}
							
							
							ZStack {
								CellView(imageName: flashcard.name,
										 color: color,
										 cellSize: 300,
										 cornerRadius: 10,
										 borderWidth: 10)
									.opacity(0.1)
									.offset(y: -20)
								
								
									Image("star-puzzle-black")
										.resizable()
										.aspectRatio(contentMode: .fit)
										.frame(width: 370, height: 300)
										.scaleEffect(showStars ? 1.2 : 0.5)
										.rotationEffect(showStars ? .degrees(180) : .degrees(0))
										.opacity(showStars ? 1 : 0)
									
									Text(flashcard.name)
										.font(.system(size: 48))
										.fontWeight(.heavy)
										.opacity(showStars ? 1 : 0)
										
								
							}
						}
						
					}
					
					InfoButton(action: {
						withAnimation(.easeOut) {
							showInfo.toggle()
						}
					})
				}
				RestartButton(action: {
					leftPuzzleAnimation = false
					showStars = false
				})
			}
			
			if showInfo {
				MoreInfoAlertView(text: AlertText.puzzleExcercise, dismiss: $showInfo)
			}
		}
    }
}

struct OnePiecePuzzle_Previews: PreviewProvider {
    static var previews: some View {
		OnePiecePuzzle(flashcard: Flashcard(name: "banana", ahapWave: "", ahapFile: "", syllables: 2), category: .market, color: Color.market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

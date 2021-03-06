//
//  ThreePiecePuzzle.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 27/9/21.
//

import SwiftUI

struct ThreePiecePuzzle: View {
	
	let flashcard: Flashcard
	let category: Category
	let color: Color
    
    @State var trailingPuzzleAnimation = false
    @State var topLeadingPuzzleAnimation = false
    @State var bottomleadingPuzzleAnimation = false
    @State var showStars = false
	@State var showInfo = false
	@State var animationCounter = 0
    
    var body: some View {
		ZStack {
			ZStack(alignment: .bottomLeading){
				ZStack(alignment: .bottomTrailing){
					ZStack {
						ZStack{
							BackgroundView(imageName: "backgroundpuzzle-\(category)" )
							
							
							HStack(spacing: 30) {
								
								
								
								
								VStack {
									MaskedPuzzleImage(imageName: flashcard.name,
													  color: color,
													  cellSize: 150,
													  cornerRadius: 10,
													  borderWidth: 10,
													  maskImageName: "puzzle-3pc-2")
										.scaleEffect(topLeadingPuzzleAnimation ? 2 : 1)
										.offset(x: topLeadingPuzzleAnimation ? 260 : 0 ,
												y: topLeadingPuzzleAnimation ? 29 : 0)
										.onAppear(perform: HapticEngine.shared.createEngine)
										.onTapGesture {
											withAnimation(.linear(duration: 0.2)) {
												topLeadingPuzzleAnimation.toggle()
												animationCounter += 1
												if trailingPuzzleAnimation && bottomleadingPuzzleAnimation && topLeadingPuzzleAnimation {
													withAnimation(.easeIn(duration: 0.5)) {
														showStars.toggle()
													}
												}
											}
											
											if animationCounter == 1 {
												HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s1")
											} else if animationCounter == 2 {
												HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s2")
											} else {
												HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s3")
											}
										}
									
									
									MaskedPuzzleImage(imageName: flashcard.name,
													  color: color,
													  cellSize: 150,
													  cornerRadius: 10,
													  borderWidth: 10,
													  maskImageName: "puzzle-3pc-3")
										.scaleEffect(bottomleadingPuzzleAnimation ? 2 : 1)
										.offset(x: bottomleadingPuzzleAnimation ? 260 : 0 ,
												y: bottomleadingPuzzleAnimation ? -130 : -65)
									
										.onTapGesture {
											animationCounter += 1
											withAnimation(.linear(duration: 0.2)) {
												bottomleadingPuzzleAnimation.toggle()
												if topLeadingPuzzleAnimation && bottomleadingPuzzleAnimation && topLeadingPuzzleAnimation {
													withAnimation(.easeIn(duration: 0.5)) {
														showStars.toggle()
													}
												}
											}
											if animationCounter == 1 {
												HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s1")
											} else if animationCounter == 2 {
												HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s2")
											} else {
												HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s3")
											}
										}
									
								}
								.offset(y: 50)
								
								
								Spacer()
									.frame(width: 300, height: 300)
									.offset(y: -30)
								
								
								
								
								
								MaskedPuzzleImage(imageName: flashcard.name,
												  color: color,
												  cellSize: 150,
												  cornerRadius: 10,
												  borderWidth: 10,
												  maskImageName: "puzzle-3pc-1")
									.scaleEffect(trailingPuzzleAnimation ? 2 : 1)
									.offset(x: trailingPuzzleAnimation ? -250 : 0 ,
											y: trailingPuzzleAnimation ? 0 : 0)
								
									.onTapGesture {
										animationCounter += 1
										withAnimation(.linear(duration: 0.2)) {
											trailingPuzzleAnimation.toggle()
											if topLeadingPuzzleAnimation && bottomleadingPuzzleAnimation && topLeadingPuzzleAnimation {
												withAnimation(.easeIn(duration: 0.5)) {
													showStars.toggle()
												}
											}
										}
										if animationCounter == 1 {
											HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s1")
										} else if animationCounter == 2 {
											HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s2")
										} else {
											HapticEngine.shared.playHapticsFile(name: "AHAP/\(flashcard.name)-s3")
										}
									}
							}
							
						}
						
						CellView(imageName: flashcard.name,
								 color: color,
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
					
					InfoButton(action: {showInfo.toggle()})
				}
				RestartButton(action: {
					bottomleadingPuzzleAnimation = false
					trailingPuzzleAnimation = false
					topLeadingPuzzleAnimation = false
					showStars = false
					animationCounter = 0
				})
			}
			
			if showInfo {
				MoreInfoAlertView(text: AlertText.puzzleExcercise, dismiss: $showInfo)
			}
		}
    }
}

struct ThreePiecePuzzle_Previews: PreviewProvider {
    static var previews: some View {
		ThreePiecePuzzle(flashcard: Flashcard(name: "banana",
											  ahapWave: "",
											  ahapFile: "",
											  syllables: 2), category: .market, color: .market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

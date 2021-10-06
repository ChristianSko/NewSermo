//
//  ThreePiecePuzzle.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 27/9/21.
//

import SwiftUI

struct ThreePiecePuzzle: View {
    
    @State var trailingPuzzleAnimation = false
    @State var topLeadingPuzzleAnimation = false
    @State var bottomleadingPuzzleAnimation = false
    @State var showStars = false
    
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .bottomTrailing){
                ZStack {
                    ZStack{
                        BackgroundView(imageName: "backgroundpuzzle-market" )
                        
                        
                        HStack(spacing: 30) {
                            
                            
                            
                            
                            VStack {
                                MaskedPuzzleImage(imageName: "apple",
                                                  color: Color.blue,
                                                  cellSize: 150,
                                                  cornerRadius: 10,
                                                  borderWidth: 10,
                                                  maskImageName: "puzzle-3pc-2")
                                    .scaleEffect(topLeadingPuzzleAnimation ? 2 : 1)
                                    .offset(x: topLeadingPuzzleAnimation ? 260 : 0 ,
                                            y: topLeadingPuzzleAnimation ? 29 : 0)
                                    .onTapGesture {
                                        withAnimation {
                                            topLeadingPuzzleAnimation.toggle()
                                            if trailingPuzzleAnimation && bottomleadingPuzzleAnimation && topLeadingPuzzleAnimation {
                                                withAnimation {
                                                    showStars.toggle()
                                                }
                                            }
                                        }
                                    }
                                
                                
                                MaskedPuzzleImage(imageName: "apple",
                                                  color: Color.blue,
                                                  cellSize: 150,
                                                  cornerRadius: 10,
                                                  borderWidth: 10,
                                                  maskImageName: "puzzle-3pc-3")
                                    .scaleEffect(bottomleadingPuzzleAnimation ? 2 : 1)
                                    .offset(x: bottomleadingPuzzleAnimation ? 260 : 0 ,
                                            y: bottomleadingPuzzleAnimation ? -130 : -65)
                                
                                    .onTapGesture {
                                        withAnimation {
                                            bottomleadingPuzzleAnimation.toggle()
                                            if topLeadingPuzzleAnimation && bottomleadingPuzzleAnimation && topLeadingPuzzleAnimation {
                                                withAnimation {
                                                    showStars.toggle()
                                                }
                                            }
                                        }
                                    }
                                
                            }
                            .offset(y: 50)
                            
                            
                            Spacer()
                                .frame(width: 300, height: 300)
                                .offset(y: -30)
                            
                            
                            
                            
                            
                            MaskedPuzzleImage(imageName: "apple",
                                              color: Color.blue,
                                              cellSize: 150,
                                              cornerRadius: 10,
                                              borderWidth: 10,
                                              maskImageName: "puzzle-3pc-1")
                                .scaleEffect(trailingPuzzleAnimation ? 2 : 1)
                                .offset(x: trailingPuzzleAnimation ? -250 : 0 ,
                                        y: trailingPuzzleAnimation ? 0 : 0)
                            
                                .onTapGesture {
                                    withAnimation {
                                        trailingPuzzleAnimation.toggle()
                                        if topLeadingPuzzleAnimation && bottomleadingPuzzleAnimation && topLeadingPuzzleAnimation {
                                            withAnimation {
                                                showStars.toggle()
                                            }
                                        }
                                    }
                                }
                        }
                        
                    }
                    
                    CellView(imageName: "apple",
                             color: Color.blue,
                             cellSize: 300,
                             cornerRadius: 10,
                             borderWidth: 10)
                        .opacity(0.1)
                        .offset(y: -30)
                    
                    if showStars {
                        Image("star-puzzle-black")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 370, height: 300)
                        
                        Text("Apple")
                            .font(.system(size: 48))
                            .fontWeight(.heavy)
                    }
                    
                }
                
                InfoButton(action: {print("show modal")})
            }
            RestartButton(action: {
                bottomleadingPuzzleAnimation = false
                trailingPuzzleAnimation = false
                topLeadingPuzzleAnimation = false
                showStars = false
            })
        }
    }
}

struct ThreePiecePuzzle_Previews: PreviewProvider {
    static var previews: some View {
        ThreePiecePuzzle()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

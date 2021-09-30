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
                                        y: topLeadingPuzzleAnimation ? 20 : 0)
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
                                        y: bottomleadingPuzzleAnimation ? -140 : -65)
                            
                                .onTapGesture {
                                    withAnimation {
                                        bottomleadingPuzzleAnimation.toggle()
                                        if trailingPuzzleAnimation && bottomleadingPuzzleAnimation {
                                            withAnimation {
                                                showStars.toggle()
                                            }
                                        }
                                    }
                            }
                            
                        }
                        .offset(y: 50)
                        

                            CellView(imageName: "apple",
                                     color: Color.blue,
                                     cellSize: 300,
                                     cornerRadius: 10,
                                     borderWidth: 10)
                                .opacity(0.1)
                                .offset(y: -30)
                            
                        
                        
                        
                        MaskedPuzzleImage(imageName: "apple",
                                          color: Color.blue,
                                          cellSize: 150,
                                          cornerRadius: 10,
                                          borderWidth: 10,
                                          maskImageName: "puzzle-3pc-1")
                            .scaleEffect(trailingPuzzleAnimation ? 2 : 1)
                            .offset(x: trailingPuzzleAnimation ? -250 : 0 ,
                                    y: trailingPuzzleAnimation ? -10 : 0)
                        
                            .onTapGesture {
                                withAnimation {
                                    trailingPuzzleAnimation.toggle()
                                }
                            }
                    }
                    
                }
                
                InfoButton(action: {print("show modal")})
            }
            RestartButton(action: {
                bottomleadingPuzzleAnimation = false
                trailingPuzzleAnimation = false
                topLeadingPuzzleAnimation = false
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

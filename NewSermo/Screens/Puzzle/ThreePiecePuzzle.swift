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
                            CellView(imageName: "apple",
                                     color: Color.blue,
                                     cellSize: 150,
                                     cornerRadius: 10,
                                     borderWidth: 10)
                                .scaleEffect(topLeadingPuzzleAnimation ? 1.5 : 1)
                                .offset(x: topLeadingPuzzleAnimation ? 280 : 0 ,
                                        y: topLeadingPuzzleAnimation ? -120 : -60)
                            
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
                            
                            
                            CellView(imageName: "apple",
                                     color: Color.blue,
                                     cellSize: 150,
                                     cornerRadius: 10,
                                     borderWidth: 10)
                                .scaleEffect(bottomleadingPuzzleAnimation ? 1.5 : 1)
                                .offset(x: bottomleadingPuzzleAnimation ? 280 : 0 ,
                                        y: bottomleadingPuzzleAnimation ? -120 : -60)
                            
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
                                .opacity(0.4)
                                .offset(y: -30)
                            
                        
                        CellView(imageName: "apple",
                                 color: Color.blue,
                                 cellSize: 150,
                                 cornerRadius: 10,
                                 borderWidth: 10)
                            .scaleEffect(trailingPuzzleAnimation ? 1.5 : 1)
                            .offset(x: trailingPuzzleAnimation ? -280 : 0 ,
                                    y: trailingPuzzleAnimation ? -120 : -80)
                        
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

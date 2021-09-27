//
//  ThreePiecePuzzle.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 27/9/21.
//

import SwiftUI

struct ThreePiecePuzzle: View {
    
    @State var toprightPuzzleAnimation = false
    @State var bottomRightPuzzleAnimation = false
    @State var leftPuzzleAnimation = false
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
                                .scaleEffect(leftPuzzleAnimation ? 1.5 : 1)
                                .offset(x: leftPuzzleAnimation ? 280 : 0 ,
                                        y: leftPuzzleAnimation ? -120 : -60)
                            
                                .onTapGesture {
                                    withAnimation {
                                        leftPuzzleAnimation.toggle()
                                        if toprightPuzzleAnimation && leftPuzzleAnimation {
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
                                .scaleEffect(leftPuzzleAnimation ? 1.5 : 1)
                                .offset(x: leftPuzzleAnimation ? 280 : 0 ,
                                        y: leftPuzzleAnimation ? -120 : -60)
                            
                                .onTapGesture {
                                    withAnimation {
                                        leftPuzzleAnimation.toggle()
                                        if toprightPuzzleAnimation && leftPuzzleAnimation {
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
                            .scaleEffect(toprightPuzzleAnimation ? 1.5 : 1)
                            .offset(x: toprightPuzzleAnimation ? -280 : 0 ,
                                    y: toprightPuzzleAnimation ? -120 : -80)
                        
                            .onTapGesture {
                                withAnimation {
                                    toprightPuzzleAnimation.toggle()
                                }
                            }
                    }
                    
                }
                
                InfoButton(action: {print("show modal")})
            }
            RestartButton(action: {
                leftPuzzleAnimation = false
                toprightPuzzleAnimation = false
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

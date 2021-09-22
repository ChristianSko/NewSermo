//
//  PuzzleView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 16/9/21.
//

import SwiftUI

struct TwoPiecePuzzleView: View {
    
    @State var rightPuzzleAnimation = false
    @State var leftPuzzleAnimation = false
    @State var showStars = false
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .bottomTrailing){
                ZStack{
                    BackgroundView(imageName: "backgroundpuzzle-market" )
                    
                    
                    HStack(spacing: 30) {
                        CellView(imageName: "apple",
                                 color: Color.blue,
                                 cellSize: 200,
                                 cornerRadius: 10,
                                 borderWidth: 10)
                            .scaleEffect(leftPuzzleAnimation ? 1.5 : 1)
                            .offset(x: leftPuzzleAnimation ? 280 : 0 ,
                                    y: leftPuzzleAnimation ? -120 : -60)
                        
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
                        

                            CellView(imageName: "apple",
                                     color: Color.blue,
                                     cellSize: 300,
                                     cornerRadius: 10,
                                     borderWidth: 10)
                                .opacity(0.4)
                                .offset(y: -30)
                            
                        
                        CellView(imageName: "apple",
                                 color: Color.blue,
                                 cellSize: 200,
                                 cornerRadius: 10,
                                 borderWidth: 10)
                            .scaleEffect(rightPuzzleAnimation ? 1.5 : 1)
                            .offset(x: rightPuzzleAnimation ? -280 : 0 ,
                                    y: rightPuzzleAnimation ? -120 : -60)
                        
                            .onTapGesture {
                                withAnimation {
                                    rightPuzzleAnimation.toggle()
                                }
                            }
                    }
                    
                }
                
                InfoButton(action: {print("show modal")})
            }
            RestartButton(action: {
                leftPuzzleAnimation = false
                rightPuzzleAnimation = false
            })
        }
    }
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        TwoPiecePuzzleView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

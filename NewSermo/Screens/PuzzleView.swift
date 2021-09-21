//
//  PuzzleView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 16/9/21.
//

import SwiftUI

struct PuzzleView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .bottomTrailing){
                ZStack{
                    BackgroundView(imageName: "backgroundpuzzle-market" )
                    
                    CellView(imageName: "apple",
                             color: Color.blue,
                             cellSize: 270,
                             cornerRadius: 10,
                             borderWidth: 10)
                        .opacity(0.4)
                        .offset(y: -30)
                    
                }
                
                InfoButton(action: {print("show modal")})
            }
            RestartButton(action: {print("restart puzzle")})
        }
    }
}

struct PuzzleView_Previews: PreviewProvider {
    static var previews: some View {
        PuzzleView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

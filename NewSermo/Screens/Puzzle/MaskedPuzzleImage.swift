//
//  MaskedPuzzleImage.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 29/9/21.
//

import SwiftUI

struct MaskedPuzzleImage: View {
    
    let imageName: String
    let color: Color
    let cellSize: CGFloat
    let cornerRadius: CGFloat
    let borderWidth: CGFloat
    let maskImageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: cellSize,
                       height: cellSize)
                .aspectRatio(contentMode: .fit)
                .border(Color.blue, width: borderWidth)
                .cornerRadius(cornerRadius)
                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                .mask {
                    Image(maskImageName)
                }
            
        }
    }
}

struct MaskedPuzzleImage_Previews: PreviewProvider {
    static var previews: some View {
        MaskedPuzzleImage(imageName: "apple",
                          color: Color.blue,
                          cellSize: 200,
                          cornerRadius: 10,
                          borderWidth: 10,
                          maskImageName: "puzzle-2pc-1")
            .previewInterfaceOrientation(.landscapeLeft)
                    
    }
}


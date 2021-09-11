//
//  CategoryView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 10/9/21.
//

import SwiftUI

struct Category: View {
    
    let backgroundImage: String
    
    var body: some View {
        ZStack {
            BackgroundView(imageName: backgroundImage)
    
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20){
                    ForEach(0..<10) { cell in
                        CellView(imageName: "apple",
                                 color: Color.blue,
                                 cellSize: 200,
                                 cornerRadius: 10,
                                 borderWidth: 5)
                    }
                }
                .offset(y: -25)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        Category(backgroundImage: ImageAsset.backgroundMarket)
    }
}

struct CellView: View {
    
    let imageName: String
    let color: Color
    let cellSize: CGFloat
    let cornerRadius: CGFloat
    let borderWidth: CGFloat
    
    var body: some View {
        VStack{
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: cellSize,
                       height: cellSize)
                .aspectRatio(contentMode: .fit)
                .border(Color.blue, width: borderWidth)
                .cornerRadius(cornerRadius)
                .shadow(radius: 3)
            
        }
    }
}

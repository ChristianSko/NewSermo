//
//  CategoryView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 10/9/21.
//

import SwiftUI

struct CategoryView: View {
    
    let backgroundImage: String
    
    var body: some View {
        ZStack(alignment: .center) {
            BackgroundView(imageName: backgroundImage)
                .ignoresSafeArea(.all, edges: .all)
    
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20){
                    ForEach(0..<10) { cell in
                        NavigationLink(destination: FlashcardView(color: .blue)) {
                            CellView(imageName: "apple",
                                     color: Color.blue,
                                     cellSize: 200,
                                     cornerRadius: 10,
                                     borderWidth: 5)
                        }
                    }
                }
                .offset(y: -15)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(backgroundImage: ImageAsset.backgroundMarket)
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

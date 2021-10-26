//
//  CategoryView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 10/9/21.
//

import SwiftUI

struct CategoryView: View {
    
    let data: Flashcards
    
    var body: some View {
        ZStack(alignment: .center) {
            BackgroundView(imageName: data.background[.category]!)
    
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20){
                    ForEach(0..<data.flashcards.count) { cell in
						NavigationLink(destination: FlashcardView(flashcard: data.flashcards[cell],
																  category: data.category,
																  color: data.color)) {
                            CellView(imageName: data.flashcards[cell].name,
                                     color: data.color,
                                     cellSize: 200,
                                     cornerRadius: 10,
                                     borderWidth: 10)
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
        CategoryView(data: Flashcards(flashcards:
										[Flashcard(name: "apple", ahapWave: "", ahapFile: "", syllables: 2),
										 Flashcard(name: "apple", ahapWave: "", ahapFile: "", syllables: 2),
										 Flashcard(name: "apple", ahapWave: "", ahapFile: "", syllables: 2),
										 Flashcard(name: "apple", ahapWave: "", ahapFile: "", syllables: 2)],
                                         color: Color.blue,
                                      background: [.category: ImageAsset.backgroundMarket],
                                      category: .market))
            .previewInterfaceOrientation(.landscapeLeft)
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
                .border(color, width: borderWidth)
                .cornerRadius(cornerRadius)
                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
            
        }
    }
}

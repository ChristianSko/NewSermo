//
//  Fashcard.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 13/9/21.
//

import SwiftUI

struct FlashcardView: View {
    
    let color: Color
    
    var body: some View {
        ZStack{
            BackgroundView(imageName: ImageAsset.backgroundMarketFlashcard)
                .edgesIgnoringSafeArea(.all)
        
            HStack{
                Image("apple")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .border(color, width: 12)
                
                Spacer()
                    .frame(width: 150)
                
                VStack(alignment: .center, spacing: 50){
        
                    WordButton(word: "Apple",
                               color: color) {
                        print("Haptic Feedback on here")
                    }
                        
                    HStack(spacing: 70){
                        
                        RoundedButton(sfSymbol: SFSymbols.photos,
                                      color: color){
                         print("Navigation here")
                        }

                        RoundedButton(sfSymbol: SFSymbols.puzzle,
                                      color: color){
                        print("Navigation here")
                       }
                    }
                }
                .offset(x: -80)
            }
            .background(Color(.white))
            .border(color, width: 12)
            .cornerRadius(10)
        }
        
    }
}

struct Fashcard_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView(color: .blue)
    }
}


struct WordButton: View {
    
    let word: String
    let color: Color
    let action: (() -> Void)
    
    var body: some View {
        
        Button(action: action) {
            Text(word)
                .font(.title)
                .frame(width: 240, height: 50)
                .foregroundColor(.white)
                .background(color)
                .clipShape(Capsule())
                .shadow(color: .black, radius: 2, x: 2, y: 2)
        }
    }
}


struct RoundedButton: View {
    
    let sfSymbol: String
    let color: Color
    let action: (() -> Void)
    
    var body: some View {
        
        Button(action: action) {
            Image(systemName: sfSymbol)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 82,
                       height: 82)
                .background(color)
                .clipShape(Circle())
                .shadow(color: .black, radius: 2, x: 2, y: 2)
        }
    }
}

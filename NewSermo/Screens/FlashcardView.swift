//
//  Fashcard.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 13/9/21.
//

import SwiftUI

struct FlashcardView: View {
    var body: some View {
        HStack{
            Image("apple")
                .resizable()
                .frame(width: 300, height: 300)
                .aspectRatio(contentMode: .fit)
                .border(Color.red, width: 4)
                
            
            Spacer()
                .frame(width: 150)
            
            VStack(spacing: 80){
                Text("Spoon")
                
                
                HStack{
                    Text("PuzzleButton")
                    
                    Spacer()
                    
                    Text("FindGameButton")
                }
            }
            .offset(x: -50)
        }
        .border(Color.red, width: 4)
    }
}

struct Fashcard_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView()
    }
}

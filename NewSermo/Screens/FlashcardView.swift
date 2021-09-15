//
//  Fashcard.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 13/9/21.
//

import SwiftUI

struct FlashcardView: View {
    var body: some View {
        
        ZStack{
            BackgroundView(imageName: "backgroundmixflashcard-park")
                .edgesIgnoringSafeArea(.all)
        
            HStack{
                Image("apple")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .border(Color.red, width: 12)
                    
                
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
            .background(Color(.white))
            .border(Color.red, width: 12)
        }
        
    }
}

struct Fashcard_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView()
    }
}

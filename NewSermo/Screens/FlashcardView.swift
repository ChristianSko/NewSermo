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
                
                VStack(alignment: .center, spacing: 50){
                    Text("Spoon")
                        .font(.title)
                        .frame(width: 240, height: 50)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .clipShape(Capsule())
                        
                        
                        
                    
                    
                    HStack(spacing: 50){
                        Image(systemName: "photo.on.rectangle")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 82,
                                   height: 82)
                            .background(Color.red)
                            .clipShape(Circle())
                        
                    
                        
                        Image(systemName: "puzzlepiece")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 82,
                                   height: 82)
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                }
                
                .offset(x: -80)
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

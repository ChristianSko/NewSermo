//
//  FindAndMatchView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 16/9/21.
//

import SwiftUI

struct FindAndMatchView: View {
    
    var body: some View {
        
        ZStack{
            
            BackgroundView(imageName: "backgroundmixflashcard-market")
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                Text("You just learned Apple.\n Now, find something that has the same:")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 34){
                    PictureCell()
                    PictureCell()
                    PictureCell()
                }
            }
        }
    }
}

struct FindAndMatchView_Previews: PreviewProvider {
    static var previews: some View {
        FindAndMatchView()
    }
}


struct PictureCell: View {
    
    var body: some View {
        VStack(spacing: 28){
            Image(systemName: "camera")
                .resizable()
                .foregroundColor(.white)
                .font(Font.title.weight(.semibold))
                .frame(width: 96, height: 78, alignment: .center)
                
            Text("SHAPE")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
        .background(Color.blue)
        .cornerRadius(9)
        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
    }
}

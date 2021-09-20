//
//  FindAndMatchView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 16/9/21.
//

import SwiftUI

struct FindAndMatchView: View {
    
    
    @State private var images = [UIImage(), UIImage(), UIImage()]
    @State private var showSheets = [false, false, false]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ZStack{
                
                BackgroundView(imageName: "backgroundmixflashcard-market")
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    Text("You just learned Apple.\n Now, find something that has the same:")
                        .font(.title)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    HStack(spacing: 28){
                        
                        ForEach(0..<images.count){ picImage in
                            PictureCell(image: images[picImage])
                                .onTapGesture {
                                    showSheets[picImage] = true
                                }
                                .sheet(isPresented: $showSheets[picImage]) {
                                    ImagePicker(sourceType: .photoLibrary, selectedImage: $images[picImage])
                                }
                        }
                    }
                }
                .offset(x: -20, y: -40)
                
            }
            InfoButton(action: {print("OK")})
        }
        
    }
}

struct FindAndMatchView_Previews: PreviewProvider {
    static var previews: some View {
        FindAndMatchView()
    }
}


struct PictureCell: View {
    
    
    let image: UIImage
    
    var body: some View {
        
        ZStack{
            
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
            
            
            Image(uiImage: self.image)
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(9)
                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
        }
    }
}

//
//  FindAndMatchView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 16/9/21.
//

import SwiftUI

struct FindAndMatchView: View {
    
	let flashcard: Flashcard
	let category: Category
	let color: Color
	
    @State private var images = [UIImage(), UIImage(), UIImage()]
    @State private var showSheets = [false, false, false]
    @State private var cellAnimation = [false, false, false]
	@State private var formType = ["SHAPE", "COLOR", "TEXTURE"]
	@State var showInfo = false
    
    //TODO: - Add ImagePicker Info.plist privacy request
    
    var body: some View {
		ZStack {
			ZStack(alignment: .bottomTrailing){
				ZStack{
					
					
					BackgroundView(imageName: "backgroundmixfind-\(category)")
					
					VStack{
						Group{
						
							Text("You just learned ")
							+
							Text("**\(flashcard.name.uppercased())**")
								.underline()
							+
							Text(".\nNow, find something that has the same:")

						}
						.font(.title)
						.foregroundColor(.black)
						.multilineTextAlignment(.center)
						.padding()
						
						HStack(spacing: 28){
							
							ForEach(0..<images.count){ picImage in
								PictureCell(image: images[picImage], text: formType[picImage], color: color)
									.scaleEffect(cellAnimation[picImage] ? 1.5 : 1)
									.animation(.spring())
									.onTapGesture {
										cellAnimation[picImage].toggle()
										showSheets[picImage] = true
										cellAnimation[picImage].toggle()
									}
									.sheet(isPresented: $showSheets[picImage]) {
										ImagePicker(sourceType: .photoLibrary, selectedImage: $images[picImage])
									}
							}
						}
					}
					.offset(x: -20, y: -40)
					
				}
				InfoButton(action: {
					withAnimation(.easeOut) {
						showInfo.toggle()
					}
				})
			}
			if showInfo {
				MoreInfoAlertView(text: AlertText.findExercise, dismiss: $showInfo)
			}
		}
    }
}

struct FindAndMatchView_Previews: PreviewProvider {
    static var previews: some View {
		FindAndMatchView(flashcard: Flashcard(name: "Banana", ahapWave: "", ahapFile: "", syllables: 2), category: .market, color: .market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


struct PictureCell: View {
    
	
    let image: UIImage
	let text: String
	let color: Color
	
    var body: some View {
        
        ZStack{
            
            VStack(spacing: 28){
                Image(systemName: "camera")
                    .resizable()
                    .foregroundColor(.white)
                    .font(Font.title.weight(.semibold))
                    .frame(width: 96, height: 78, alignment: .center)
                
                Text(text)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 200)
            .background(color)
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

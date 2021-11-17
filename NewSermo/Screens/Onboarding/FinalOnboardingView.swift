//
//  FinalView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct FinalOnboardingView: View {
    
    let imageName: String
    @Binding var onBoardingState: Bool
	@State var wordButtonAnimation = false
    
    var body: some View {
        ZStack{
            ZStack(alignment: .bottomTrailing){
                BackgroundView(imageName: imageName)
                    .ignoresSafeArea()
                
                Button(action: {
                    onBoardingState.toggle()
                }, label: {
                    Image(ImageAsset.playButton)
                        .offset(x: -50)
                        .padding(20)
                        .shadow(color: .black, radius: 4, x: 2, y: 2)
                })
            }
            HStack{
                Button(action: {
                    print("wall-button")
                }, label: {
					ZStack {
						Color
							.white
							.frame(width: 250, height: 60)
							.cornerRadius(10)
						
						WordButton(word: "wall",
								   color: .green,
								   press: wordButtonAnimation)
							.padding(30)
					}
                })
                
                Button(action: {
                    print("walk-button")
                }, label: {
					
					ZStack {
						Color
							.white
							.frame(width: 250, height: 60)
							.cornerRadius(10)
						
						WordButton(word: "walk",
								   color: .green,
								   press: wordButtonAnimation)
							.padding(30)
					}
                })
            }
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    @State static var userPassedOnboarding = false
    
    static var previews: some View {
        FinalOnboardingView(imageName: ImageAsset.onboarding5,
                            onBoardingState: $userPassedOnboarding)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

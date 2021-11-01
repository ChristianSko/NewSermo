//
//  infoView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 30/10/21.
//

import SwiftUI

struct MoreInfoAlertView: View {
	
	let text: String
	
	@Binding var dismiss : Bool
	
	var body: some View {
		ZStack {
			Color
				.white
				.edgesIgnoringSafeArea(.all)
				.opacity(0.6)
				.blur(radius: 20)
			
			VStack{
				VStack{
					ScrollView{
						Text(AlertText.excerciseTitle)
							.font(.title)
							.fontWeight(.bold)
							.padding()
						
						Text(text)
							.font(.body)
							.multilineTextAlignment(.leading)
							.padding(.horizontal, 50)
					}
				}
			}
			.frame(width: 600, height: 320)
			.border(.green, width: 12)
			.background(Color(.systemBackground))
			.cornerRadius(12)
			.shadow(radius: 40)
			.overlay(Button{
				//isShowingDetail.toggle()
			} label: {
				XmarkButton(action: {
					withAnimation(.easeOut(duration: 0.8)) {
						dismiss.toggle()
					}
				})
		}, alignment: .topTrailing)
		}
	}
}

struct infoView_Previews: PreviewProvider {
	
	
    static var previews: some View {
		MoreInfoAlertView(text: AlertText.findExercise, dismiss: .constant(true))
			.previewInterfaceOrientation(.landscapeLeft)
    }
}

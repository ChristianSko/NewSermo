//
//  WordButton.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 19/9/21.
//

import SwiftUI

struct WordButton: View {
    
    let word: String
    let color: Color

    @GestureState var press = false
    
    var body: some View {
        
        Button(action: {print("OK")}) {
			Text(word.uppercased())
                .font(.title)
                .frame(width: 240, height: 50)
                .foregroundColor(.white)
                .background(color)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                .scaleEffect(press ? 1.5 : 1)
                .animation(.spring())
				.onAppear(perform: HapticEngine.shared.createEngine)
                .gesture(
                    LongPressGesture().updating($press) { currenState, gestureState, transaction in
                        gestureState = currenState
						HapticEngine.shared.playHapticsFile(name: "AHAP/\(word)")
                    }
                )
        }
    }
}

struct WordButton_Previews: PreviewProvider {
    static var previews: some View {
        WordButton(word: "apple", color: .blue)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

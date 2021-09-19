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
    let action: (() -> Void)
    
    var body: some View {
        
        Button(action: action) {
            Text(word)
                .font(.title)
                .frame(width: 240, height: 50)
                .foregroundColor(.white)
                .background(color)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                .scaleEffect(press ? 1.5 : 1)
                .animation(.spring())
                .gesture(
                    LongPressGesture().updating($press) { currenState, gestureState, transaction in
                        gestureState = currenState
                    }
                )
        }
    }
}

struct WordButton_Previews: PreviewProvider {
    static var previews: some View {
        WordButton(word: "Apple", color: .blue, action: {print("action")})
    }
}

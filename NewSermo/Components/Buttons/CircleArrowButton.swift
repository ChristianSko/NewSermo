//
//  CircleArrowRightButton.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct CircleArrowButton: View {
    
    let color: Color
    let size: CGFloat
    
    var body: some View {
        
        Button(action: {
            print("Move next screen goes here")
            
        }, label: {
            Image(systemName: SFSymbols.arrowRight)
                .font(.system(size: size))
                .foregroundColor(color)
                .shadow(color: .black, radius: 4, x: 2, y: 2)
        })
    }
}

struct CircleArrowRightButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleArrowButton(color: .white, size: 44)
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  InfoButton.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 18/9/21.
//

import SwiftUI

struct InfoButton: View {
    
    var action: (() -> Void)
    
    var body: some View {
        
        Button(action: action) {
            Image(systemName: "info.circle")
                .imageScale(.large)
                .font(.title)
                .foregroundColor(.gray)
                .padding()
        }
        
    }
}




struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        InfoButton(action: {print("clicked")})
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

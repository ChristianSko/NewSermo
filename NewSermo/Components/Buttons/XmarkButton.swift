//
//  XmarkButton.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 18/9/21.
//

import SwiftUI

struct XmarkButton: View {
    
    var action: (() -> Void)

    var body: some View {
        
            Button(action: action) {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .font(.title)
                    .foregroundColor(.red)
                    .padding()
            }
    }
}

struct XmarkButton_Previews: PreviewProvider {
        
    static var previews: some View {
        XmarkButton(action: {print("Clicked!")} )
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  RestartButton.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 18/9/21.
//

import SwiftUI

struct RestartButton: View {
    
    var action: (() -> Void)
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "arrow.counterclockwise.circle")
                .imageScale(.large)
                .font(.title)
                .foregroundColor(.green)
                .padding()
        }
    }
}

struct RestartButton_Previews: PreviewProvider {
    
    static var previews: some View {
        RestartButton(action: {print("refresh button")})
    }
}

//
//  RoundedButton.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 19/9/21.
//

import SwiftUI

struct RoundedButton: View {
    
    let sfSymbol: String
    let color: Color
    
    var body: some View {
        
        Image(systemName: sfSymbol)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 82,
                   height: 82)
            .background(color)
            .clipShape(Circle())
            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
    }
}


struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(sfSymbol: SFSymbols.puzzle, color: .blue)
    }
}

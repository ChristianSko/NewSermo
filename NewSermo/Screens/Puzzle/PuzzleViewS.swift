//
//  PuzzleView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 28/9/21.
//

import SwiftUI

struct PuzzleViewS: View {
    
    let syllables: Int
    
    var body: some View {
        if syllables == 1 {
            OnePiecePuzzle()
        } else if syllables == 2 {
            TwoPiecePuzzle()
        } else {
            ThreePiecePuzzle()
        }
    }
}

struct PuzzleViewS_Previews: PreviewProvider {
    
    static var previews: some View {
        PuzzleViewS(syllables: 1)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

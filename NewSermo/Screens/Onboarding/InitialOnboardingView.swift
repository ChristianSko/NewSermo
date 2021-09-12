//
//  InitialView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct InitialOnboardingView: View {
    
    let imagName: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            BackgroundView(imageName: imagName)
            
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialOnboardingView(imagName: ImageAsset.onboarding1)
    }
}

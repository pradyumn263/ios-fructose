//
//  OnboardingView.swift
//  Fructose
//
//  Created by Pradyumn Shukla on 23/09/20.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView{
            FruitCardView()
            FruitCardView()
            FruitCardView()
            FruitCardView()
            FruitCardView()

        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

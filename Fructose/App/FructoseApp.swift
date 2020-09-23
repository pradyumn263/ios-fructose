//
//  FructoseApp.swift
//  Fructose
//
//  Created by Pradyumn Shukla on 23/09/20.
//

import SwiftUI

@main
struct FructoseApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding) {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}

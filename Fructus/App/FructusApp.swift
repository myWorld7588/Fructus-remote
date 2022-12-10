//
//  FructusApp.swift
//  Fructus
//
//  Created by Jake Choi on 12/9/22.
//

import SwiftUI


@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

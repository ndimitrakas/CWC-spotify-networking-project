//
//  CWCSpotifyNetworkingProjectApp.swift
//  CWCSpotifyNetworkingProject
//
//  Created by Nick Dimitrakas on 2/4/25.
//

import SwiftUI

@main
struct CWCSpotifyNetworkingProjectApp: App {
    
    @State var viewModel = ContentViewModel()
    @AppStorage("onboarding") var needsOnboarding = true
 
    var body: some Scene {
        WindowGroup {
            ContentView()
                .fullScreenCover(isPresented: $needsOnboarding) {
                    needsOnboarding = false
                } content: {
                    OnboardingView()
                }
                .environment(viewModel)
        }
        
    }
}

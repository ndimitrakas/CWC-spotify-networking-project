//
//  CWCSpotifyNetworkingProjectApp.swift
//  CWCSpotifyNetworkingProject
//
//  Created by Nick Dimitrakas on 2/4/25.
//

import SwiftUI

@main
struct CWCSpotifyNetworkingProjectApp: App {
    var body: some Scene {
        @State var viewModel = ContentViewModel()
        
        WindowGroup {
            ContentView()
        }
        .environment(viewModel)
    }
}

//
//  OnboardingView.swift
//  CWCSpotifyNetworkingProject
//
//  Created by Nick Dimitrakas on 2/4/25.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        TabView {
            ZStack {
                Color(Color(red: 111/255, green: 154/255, blue: 189/255))
                
                VStack {
                    Spacer()
                    
                    Text("Welcome to my Networking Project")
                        .font(.system(size: 32, weight: .bold, design: .default))
                        .padding(.top, 30)
                    Text("This app will work with the spotify web api.")
                        .padding(.top, 5)
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(Color.white)
                                .frame(height: 50)
                            Text("Continue")
                                .bold()
                                .foregroundStyle(.black)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 81)
                }
                
            }
            .ignoresSafeArea()
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}

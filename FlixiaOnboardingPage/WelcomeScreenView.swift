//
//  WelcomeScreenView.swift
//  FlixiaOnboardingPage
//
//  Created by Amaechi Chukwu on 31/10/2022.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGC").edgesIgnoringSafeArea(.all)
                VStack {
                    Image("Flixia logo").resizable().aspectRatio(contentMode: .fit)
                    
                    
                    HStack {
                        Text("Welcome to Flixia, your one stop shop for all things streaming.")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("PrimaryColor"))
                        
                    }
                    
                    Spacer()
                    
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink {
                        SignInScreenView().navigationBarHidden(true)
                    } label: {
                        Text("Sign in")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("PrimaryColor"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding(.vertical)
                    }
                    .navigationBarHidden(true)
                    
                    HStack {
                        Text("New around here? ")
                        Text("Sign in")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

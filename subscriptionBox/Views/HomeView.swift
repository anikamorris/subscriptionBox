//
//  HomeView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/15/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Button("New Box", action: {
                //pass
            })
                .padding()
            Button("Past Boxes", action: {
                //pass
            })
                .padding()
            Button("Profile", action: {
                //pass
            })
                .padding()
        }
        .buttonStyle(BoxButtonStyle())
        .navigationBarTitle("Home")
    }
}

struct BoxButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 50, maxWidth: 300, minHeight: 50, maxHeight: 150)
            .background(Color.purple)
            .foregroundColor(Color.white)
            .opacity(configuration.isPressed ? 0.4 : 1)
            .cornerRadius(15)
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

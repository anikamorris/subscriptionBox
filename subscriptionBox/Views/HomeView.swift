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
            NavigationLink(destination: PastBoxesView()) {
                Text("Past Boxes")
            }
                .padding()
            Button("Profile", action: {
                //pass
            })
                .padding()
        }
        .buttonStyle(BoxButtonStyle())
        .navigationBarTitle(Text("Home"))
    }
}

struct BoxButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 50, maxWidth: 300, minHeight: 50, maxHeight: 150)
            .background(Color.orange)
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

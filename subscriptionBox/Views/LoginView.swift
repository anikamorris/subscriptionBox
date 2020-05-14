//
//  LoginView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/15/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var isPresented = false
    @State var username: String = ""
    @State var password: String = ""
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        VStack {
            if self.isPresented {
                TitleText()
                .scaleEffect(1.5)
                .animation(Animation.easeOut(duration: 1.0))
            }
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            NavigationLink(destination: MyTabView()) {
                LoginButtonContent()
            }
        }
        .padding()
        .onAppear { self.isPresented.toggle() }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct TitleText: View {

    var body: some View {
        Text("Breakfast Box")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.orange)
            .cornerRadius(15.0)
    }
}

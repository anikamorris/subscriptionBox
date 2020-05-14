//
//  ProfileView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/14/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .shadow(radius: 5)
                .padding()
            Text("Name")
                .fontWeight(.light)
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

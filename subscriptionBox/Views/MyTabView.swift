//
//  MyTabView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/14/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
            }
            NewBox()
                .tabItem {
                    Image(systemName: "cube.box.fill")
                    Text("New Box")
            }
            PastBoxesView()
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
            }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

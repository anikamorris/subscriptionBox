//
//  MotherView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/15/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack {
            if viewRouter.currentPage == "onboardingView" {
                OnboardingView()
            } else if viewRouter.currentPage == "loginView" {
                LoginView()
            }
        }
        
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}

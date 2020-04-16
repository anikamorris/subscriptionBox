//
//  ViewRouter.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/15/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "loginView"
        }
    }
    
    @Published var currentPage: String
    
}

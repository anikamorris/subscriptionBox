//
//  Home.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/14/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct Home: UIViewControllerRepresentable {
            
    func makeUIViewController(context: UIViewControllerRepresentableContext<Home>) -> UIViewController {
        let homeVC = HomeViewController()
        return homeVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<Home>) {
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

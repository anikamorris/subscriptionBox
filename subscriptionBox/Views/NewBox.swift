//
//  NewBox.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/22/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct NewBox: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<NewBox>) -> NewBox.UIViewControllerType {
        let newBoxVC = NewBoxViewController()
        return newBoxVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NewBox>) {
        
    }
}

struct NewBox_Previews: PreviewProvider {
    static var previews: some View {
        NewBox()
    }
}

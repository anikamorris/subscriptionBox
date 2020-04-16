//
//  PageControl.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/7/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var numPages: Int
    
    @Binding var currentPageIndex: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numPages
        control.currentPageIndicatorTintColor = .orange
        control.pageIndicatorTintColor = .gray
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
}

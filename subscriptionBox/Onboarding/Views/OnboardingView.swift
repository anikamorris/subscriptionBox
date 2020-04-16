//
//  OnboardingView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/15/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "ordering")),
            UIHostingController(rootView: Subview(imageString: "cooking")),
            UIHostingController(rootView: Subview(imageString: "breakfast"))
        ]
        
    var captions:[String] = ["Choose your items", "Get bi-monthly breakfast boxes", "Make it easy to cook delicious breakfast!"]
    var captios:[String] = []
    
    @State var currentPageIndex = 0
    var body: some View {
        NavigationView {
            VStack() {
                PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                    .frame(height: 600)
                Group {
    //                Text(titles[currentPageIndex])
    //                    .font(.title)
                    Text(captions[currentPageIndex])
                        .font(.system(.largeTitle, design: .rounded))
        //                .foregroundColor(.gray)
                        .frame(width: 300, height: 100, alignment: .leading)
                        .lineLimit(nil)
                }
                    .padding()
                HStack {
                    PageControl(numPages: subviews.count, currentPageIndex: $currentPageIndex)
                    Spacer()
                    if self.currentPageIndex+1 == self.subviews.count {
                        NavigationLink(destination: LoginView()) {
                            ButtonContent()
                        }
                    } else {
                        Button(action: {
                            self.currentPageIndex += 1
                        }) {
                            ButtonContent()
                        }
                    }
                    
                }
                    .padding()
            }
            .navigationBarTitle("Breakfast Box")
        }
    }
}

struct ButtonContent: View {
    var body: some View {
        Image(systemName: "arrow.right")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .padding()
            .background(Color.orange)
            .cornerRadius(30)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

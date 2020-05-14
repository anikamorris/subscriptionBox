//
//  PastBoxesView.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/16/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct PastBoxesView: View {
    
    var boxes: [Box] = testData
    
    var body: some View {
        List(boxes) { box in
            BoxCell(box: box)
        }
        .padding()
        .navigationBarTitle(Text("Past Boxes"))
    }
}

struct PastBoxesView_Previews: PreviewProvider {
    static var previews: some View {
        PastBoxesView(boxes: testData)
    }
}

struct BoxCell: View {
    let box: Box
    var body: some View {
        NavigationLink(destination: BoxDetail(box: box)) {
            Image(systemName: "cube.box")
                .resizable()
                .frame(width: CGFloat(50), height: CGFloat(50))
                .aspectRatio(contentMode: .fit)
                .clipped()
            Spacer()
            Text(box.date)
                .font(.headline)
        }
    }
}

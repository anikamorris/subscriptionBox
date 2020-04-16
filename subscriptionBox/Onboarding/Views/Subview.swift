//
//  Subview.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/7/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct Subview: View {
    var imageString: String
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "breakfast")
    }
}

//
//  ImageSubview.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/9/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct ImageSubview: View {
    var imageString: String
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
    }
}

struct ImageSubview_Previews: PreviewProvider {
    static var previews: some View {
        ImageSubview(imageString: "")
    }
}

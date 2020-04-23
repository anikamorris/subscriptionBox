//
//  BoxDetail.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/16/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import SwiftUI

struct BoxDetail: View {
    
    let box: Box
    
    var body: some View {
        List(box.recipes) { recipe in
            Text(recipe.name)
        }
        .navigationBarTitle(Text(box.date))
    }
}

struct BoxDetail_Previews: PreviewProvider {
    static var previews: some View {
        BoxDetail(box: box1)
    }
}

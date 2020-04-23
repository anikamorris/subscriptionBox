//
//  Box.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/16/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation

struct Box: Identifiable {
    var id = UUID()
    let date: String
    var recipes: [Recipe]
}

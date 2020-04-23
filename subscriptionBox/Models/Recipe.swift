//
//  Recipe.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/16/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}

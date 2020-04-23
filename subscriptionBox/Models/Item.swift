//
//  Item.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/16/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var category: String
    var imageName: String
}

//
//  testData.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/16/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation
import SwiftUI

let item1 = Item(name: "Milk", category: "Beverage", imageName: "image")
let item2 = Item(name: "Eggs", category: "Ingredient", imageName: "image")
let item3 = Item(name: "Bread", category: "Ingredient", imageName: "image")
let item4 = Item(name: "Avocado", category: "Produce", imageName: "image")

let recipe1 = Recipe(name: "Strawberry French Toast", imageName: "image")
let recipe2 = Recipe(name: "Chia Seed Pudding", imageName: "image")
let recipe3 = Recipe(name: "English Breakfast", imageName: "image")
let recipe4 = Recipe(name: "Potato Crust Quiche", imageName: "image")


let box1 = Box(date: "January 2020", recipes: [recipe1, recipe2])
let box2 = Box(date: "February 2020", recipes: [recipe3, recipe4])

let testData = [box1, box2]

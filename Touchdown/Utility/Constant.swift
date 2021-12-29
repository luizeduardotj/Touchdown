//
//  Constant.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 24/12/21.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")

/// For some reason, this bundle file didn't decode when i was developmenting this app.
/// So I created manually all brands items in a array on the bottom of this file.
//let brands: [BrandModel] = Bundle.main.decode("brand.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


// LAYOUT

let keyWindow = UIApplication.shared.connectedScenes
    .filter({$0.activationState == .foregroundInactive})
    .compactMap({$0 as? UIWindowScene})
    .first?.windows
    .filter({$0.isKeyWindow}).first

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayourt: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
// API
// IMAGE
// FONT
// STRING
// MISC

let brands: [BrandModel] = [
    BrandModel(id: 1, image: "brand-no01"),
    BrandModel(id: 2, image: "brand-no02"),
    BrandModel(id: 3, image: "brand-no03"),
    BrandModel(id: 4, image: "brand-no04"),
    BrandModel(id: 5, image: "brand-no05"),
    BrandModel(id: 6, image: "brand-no06"),
    BrandModel(id: 7, image: "brand-no07"),
    BrandModel(id: 8, image: "brand-no08"),
    BrandModel(id: 9, image: "brand-no09"),
    BrandModel(id: 10, image: "brand-no10"),
    BrandModel(id: 11, image: "brand-no11"),
    BrandModel(id: 12, image: "brand-no12"),
    BrandModel(id: 13, image: "brand-no13"),
    BrandModel(id: 14, image: "brand-no14"),
    BrandModel(id: 15, image: "brand-no15"),
    BrandModel(id: 16, image: "brand-no16"),
]

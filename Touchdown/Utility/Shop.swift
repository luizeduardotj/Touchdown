//
//  Shop.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 02/01/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel?
}

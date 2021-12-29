//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 27/12/21.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

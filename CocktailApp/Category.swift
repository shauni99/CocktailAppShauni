//
//  Category.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct Category: Codable{
    var strCategory: String


enum CodingKeys: String, CodingKey {
        case strCategory
    }
}

struct Categories: Codable {
    let drinks: [Category]
}


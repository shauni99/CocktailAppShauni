//
//  Category.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct Category: Codable{
    var name: String
    

enum CodingKeys: String, CodingKey {
        case name = "strCategory"
    }
}

struct Categories: Codable{
    let categories: [Category]
}




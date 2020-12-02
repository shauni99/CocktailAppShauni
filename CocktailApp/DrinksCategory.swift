//
//  DrinksCategory.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 02/12/2020.
//

import Foundation

struct DrinksCategory: Codable {
    var drinks: [Category]
    
    
    enum CodingKeys: String, CodingKey {
            case drinks
        }
    
}

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


/* {"drinks":[
 {"strCategory":"Ordinary Drink"},
 {"strCategory":"Cocktail"},
 {"strCategory":"Milk \/ Float \/Shake"},
 {"strCategory":"Other\/Unknown"},
 {"strCategory":"Cocoa"},
 {"strCategory":"Shot"},
 {"strCategory":"Coffee \/ Tea"},
 {"strCategory":"Homemade Liqueur"},
 {"strCategory":"Punch \/ Party Drink"},
 {"strCategory":"Beer"},
 {"strCategory":"Soft Drink \/ Soda"}
 ]}  */


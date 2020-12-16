//
//  Favorite.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 09/12/2020.
//

import Foundation

struct Favorite: Codable{
    var favCocktails: [Cocktail]

    init(favCocktails: [Cocktail] = []) {
        self.favCocktails = favCocktails
    }
}

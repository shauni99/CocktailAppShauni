//
//  Favorite.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct favorite: Codable {
     var cocktails: [Cocktail]
    
        init(cocktails: [Cocktail] = []) {
            self.cocktails = cocktails
        }
   
}

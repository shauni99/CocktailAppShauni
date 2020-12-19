//
//  FavoriteRepository.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 19/12/2020.
//

import Foundation

class FavoriteRepository {
    static var shared = FavoriteRepository()
    
    let favoriteFileUrl =
        FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask).first!.appendingPathComponent("favorite").appendingPathExtension("plist")
    
     func loadFavorite() {
        guard let data = try? Data(contentsOf: favoriteFileUrl) else
           { return }
        CocktailController.shared.favorite = (try? JSONDecoder().decode(Favorite.self, from:
           data)) ?? Favorite(favCocktails: [])
    }
    
    
    func saveFavorite() {
        if let data = try? JSONEncoder().encode(CocktailController.shared.favorite) {
            try? data.write(to: favoriteFileUrl)
        }
    }
}

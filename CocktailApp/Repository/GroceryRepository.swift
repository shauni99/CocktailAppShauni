//
//  GroceryRepository.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 20/12/2020.
//

import Foundation
class GroceryRepository {
    
    static var shared = GroceryRepository()
    
    let groceryFileUrl =
        FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask).first!.appendingPathComponent("grocery").appendingPathExtension("plist")
    
    func loadGroceries() -> [GroceryItem] {
             let propertyListDecoder = PropertyListDecoder()
                    if let retrievedGroceries = try? Data(contentsOf: groceryFileUrl),
                        let decodedGroceries = try? propertyListDecoder.decode(Array<GroceryItem>.self, from: retrievedGroceries) {
                     return decodedGroceries
             }
             return [GroceryItem]()
       }

    func saveGroceries(groceries: [GroceryItem]) {
        let properyListEncoder = PropertyListEncoder()
                       let encodedGroceries = try? properyListEncoder.encode(groceries)
                              try? encodedGroceries?.write(to: groceryFileUrl, options: .noFileProtection)
    }
}

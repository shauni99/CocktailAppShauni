//
//  CocktailController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct CocktailController {
    
    let baseUrl = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list")!
    
    func fetchCategories( completion: @escaping ([Category]?) -> Void) {
        let task = URLSession.shared.dataTask(with: baseUrl) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data, let categories = try? jsonDecoder.decode(Categories.self, from: data) {
                completion(categories.drinks)
                
            } else {
                completion(nil)
            }
        }
        task.resume()
    }

}


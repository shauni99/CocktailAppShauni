//
//  CocktailController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct CocktailController {
    
    
   
    
    func fetchCategories(completion: @escaping ([Category]?) -> Void)
    {
        let baseURL = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list")!
  
        _ = URLSession.shared.dataTask(with: baseURL)
           { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data,
                let drinksCategory = try? jsonDecoder.decode(DrinksCategory.self,
                  from: data) {
                completion(drinksCategory.drinks)
                print(drinksCategory.drinks)
            } else {
                completion(nil)
            }
        }
        
    }

}

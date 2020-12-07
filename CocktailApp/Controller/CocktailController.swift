//
//  CocktailController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct CocktailController {
    
    
    
    func fetchCategories( completion: @escaping ([Category]?) -> Void) {
        let categoryUrl = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list")!
        let task = URLSession.shared.dataTask(with: categoryUrl) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data, let categories = try? jsonDecoder.decode(Categories.self, from: data) {
                completion(categories.drinks)
                
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
    
   
    func fetchCocktails(forCategory categoryName: String, completion:
    @escaping ([Cocktail]?) -> Void) {
        let baseUrl = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/")!
        let initialCocktailsOfCategoryUrl = baseUrl.appendingPathComponent("filter.php")
        var components = URLComponents(url: initialCocktailsOfCategoryUrl,
        resolvingAgainstBaseURL: true)!
        components.queryItems = [URLQueryItem(name: "c",
        value: categoryName)]
        let cocktailsOfCategoryUrl = components.url!
        
        let task = URLSession.shared.dataTask(with: cocktailsOfCategoryUrl) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            var cocktails = [Cocktail]()
            if let data = data,
                let cocktailsOfCategory = try? jsonDecoder.decode(CocktailsOfCategory.self, from: data) {
                for cocktail in cocktailsOfCategory.drinks {
                    self.fetchCocktail(id: cocktail.id) { (cocktailOfCategory) in
                        if let cocktailOfCategory = cocktailOfCategory{
                            cocktails.append(contentsOf: cocktailOfCategory)
                            completion(cocktails)
                        }
                    }
                
                }
            } else {
                completion(nil)
            }
        }
        
        task.resume()
    }
    
    
    //we moeten nog eens apart de cocktail bij ID ophalen, anders toont hij alle cocktails in 1 en dezelfde cell + hebben we niet genoeg info voor het recept
     func fetchCocktail(id: String, completion: @escaping([Cocktail]?) -> Void){
        let baseUrl = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/")!
        let initialCocktailOfCategoryUrl = baseUrl.appendingPathComponent("lookup.php/")
        var components = URLComponents(url: initialCocktailOfCategoryUrl,
        resolvingAgainstBaseURL: true)!
        components.queryItems = [URLQueryItem(name: "i",
        value: id)]
        let cocktailOfCategoryUrl = components.url!
        let task = URLSession.shared.dataTask(with: cocktailOfCategoryUrl) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data, let cocktail = try? jsonDecoder.decode(Drinks.self, from: data) {
                completion(cocktail.drinks)
                
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
 
}




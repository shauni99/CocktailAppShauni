//
//  Cocktail.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct Cocktail: Codable {
    var id: String
    var title: String
    var image: String
    var instructions: String
    var alcoholic: String
    var category: String
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    
    var ingredientAmount1: String?
    var ingredientAmount2: String?
    var ingredientAmount3: String?
    var ingredientAmount4: String?
    var ingredientAmount5: String?
    var ingredientAmount6: String?
    var ingredientAmount7: String?
    var ingredientAmount8: String?
    var ingredientAmount9: String?
    var ingredientAmount10: String?
    var ingredientAmount11: String?
    var ingredientAmount12: String?
    var ingredientAmount13: String?
    var ingredientAmount14: String?
    var ingredientAmount15: String?

    enum CodingKeys: String, CodingKey{
        case id = "idDrink"
        case title = "strDrink"
        case image = "strDrinkThumb"
        case instructions = "strInstructions"
        case alcoholic = "strAlcoholic"
        case category = "strCategory"
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case ingredientAmount1 = "strMeasure1"
        case ingredientAmount2 = "strMeasure2"
        case ingredientAmount3 = "strMeasure3"
        case ingredientAmount4 = "strMeasure4"
        case ingredientAmount5 = "strMeasure5"
        case ingredientAmount6 = "strMeasure6"
        case ingredientAmount7 = "strMeasure7"
        case ingredientAmount8 = "strMeasure8"
        case ingredientAmount9 = "strMeasure9"
        case ingredientAmount10 = "strMeasure10"
        case ingredientAmount11 = "strMeasure11"
        case ingredientAmount12 = "strMeasure12"
        case ingredientAmount13 = "strMeasure13"
        case ingredientAmount14 = "strMeasure14"
        case ingredientAmount15 = "strMeasure15"
                
    }
    
}

struct Drinks: Codable{
    let drinks: [Cocktail]
}








//
//  Cocktail.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import Foundation

struct Cocktail: Codable, Equatable {
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


/*
 Drinks.drinks ->
 
 {"drinks":[{"idDrink":"11007","strDrink":"Margarita","strDrinkAlternate":null,"strDrinkES":null,"strDrinkDE":null,"strDrinkFR":null,"strDrinkZH-HANS":null,"strDrinkZH-HANT":null,"strTags":"IBA,ContemporaryClassic","strVideo":null,"strCategory":"Ordinary Drink","strIBA":"Contemporary Classics","strAlcoholic":"Alcoholic","strGlass":"Cocktail glass","strInstructions":"Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.","strInstructionsES":null,"strInstructionsDE":"Reiben Sie den Rand des Glases mit der Limettenscheibe, damit das Salz daran haftet. Achten Sie darauf, dass nur der \u00e4u\u00dfere Rand angefeuchtet wird und streuen Sie das Salz darauf. Das Salz sollte sich auf den Lippen des Genie\u00dfers befinden und niemals in den Cocktail einmischen. Die anderen Zutaten mit Eis sch\u00fctteln und vorsichtig in das Glas geben.","strInstructionsFR":null,"strInstructionsZH-HANS":null,"strInstructionsZH-HANT":null,"strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/5noda61589575158.jpg","strIngredient1":"Tequila","strIngredient2":"Triple sec","strIngredient3":"Lime juice","strIngredient4":"Salt","strIngredient5":null,"strIngredient6":null,"strIngredient7":null,"strIngredient8":null,"strIngredient9":null,"strIngredient10":null,"strIngredient11":null,"strIngredient12":null,"strIngredient13":null,"strIngredient14":null,"strIngredient15":null,"strMeasure1":"1 1\/2 oz ","strMeasure2":"1\/2 oz ","strMeasure3":"1 oz ","strMeasure4":null,"strMeasure5":null,"strMeasure6":null,"strMeasure7":null,"strMeasure8":null,"strMeasure9":null,"strMeasure10":null,"strMeasure11":null,"strMeasure12":null,"strMeasure13":null,"strMeasure14":null,"strMeasure15":null,"strImageSource":"https:\/\/commons.wikimedia.org\/wiki\/File:Klassiche_Margarita.jpg","strImageAttribution":"Cocktailmarler","strCreativeCommonsConfirmed":"Yes","dateModified":"2015-08-18 14:42:59"}
 ]}
 */

struct CocktailsOfCategory: Codable {
    let drinks: [CocktailOfCategory]
}

struct CocktailOfCategory: Codable{
    var id: String
    
    enum CodingKeys: String, CodingKey{
        case id = "idDrink"
    }
}

/* {"drinks":[
 {"strDrink":"Castillian Hot Chocolate","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/3nbu4a1487603196.jpg","idDrink":"12730"},
 {"strDrink":"Chocolate Beverage","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/jbqrhv1487603186.jpg","idDrink":"12732"},
 {"strDrink":"Chocolate Drink","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/q7w4xu1487603180.jpg","idDrink":"12734"},
 {"strDrink":"Drinking Chocolate","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/u6jrdf1487603173.jpg","idDrink":"12736"},{"strDrink":"Hot Chocolate to Die for","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/0lrmjp1487603166.jpg","idDrink":"12738"},
 {"strDrink":"Microwave Hot Cocoa","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/8y4x5f1487603151.jpg","idDrink":"12744"},
 {"strDrink":"Nuked Hot Chocolate","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/xcu6nb1487603142.jpg","idDrink":"12746"},
 {"strDrink":"Orange Scented Hot Chocolate","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/hdzwrh1487603131.jpg","idDrink":"12748"},
 {"strDrink":"Spanish chocolate","strDrinkThumb":"https:\/\/www.thecocktaildb.com\/images\/media\/drink\/pra8vt1487603054.jpg","idDrink":"12750"}
 ]}
 /**/*/

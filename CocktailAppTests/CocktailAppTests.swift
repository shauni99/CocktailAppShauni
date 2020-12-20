//
//  CocktailAppTests.swift
//  CocktailAppTests
//
//  Created by shauni vansteyvoort on 20/12/2020.
//

import XCTest
@testable import CocktailApp

class CocktailAppTests: XCTestCase {
    
   

    let testcocktail: Cocktail = Cocktail(id: "200", title: "testcocktail", image: "test", instructions: "testInstructions", alcoholic: "alcholic", category:"shots", strIngredient1: "testIngredient1", strIngredient2: "testIngredient2", strIngredient3: "testIngredient3", strIngredient4: "testIngredient4", strIngredient5: "testIngredient5", strIngredient6: "testIngredient6", strIngredient7: "testIngredient7", strIngredient8: "testIngredient8", strIngredient9: "testIngredient9", strIngredient10: "testIngredient10", strIngredient11: "testIngredient11", strIngredient12: "testIngredient12", strIngredient13: "testIngredient13", strIngredient14: "testIngredient14", strIngredient15: "testIngredient15", ingredientAmount1: "testAmount1", ingredientAmount2: "testAmount2", ingredientAmount3: "testAmount3", ingredientAmount4: "testAmount4", ingredientAmount5: "testAmount5", ingredientAmount6: "testAmount6", ingredientAmount7: "testAmount7", ingredientAmount8: "testAmount8", ingredientAmount9: "testAmount9", ingredientAmount10: "testAmount10", ingredientAmount11: "testAmount11", ingredientAmount12: "testAmount12", ingredientAmount13: "testAmount13", ingredientAmount14: "testAmount14", ingredientAmount15: "testAmount15")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        CocktailController.shared.favorite.favCocktails.append(testcocktail)
        FavoriteRepository.shared.saveFavorite()
    }

    func test_FavoriteRepo_Returns_favoriteCocktails() {
        
        FavoriteRepository.shared.loadFavorite()
        let fav = CocktailController.shared.favorite.favCocktails
        
        XCTAssertTrue(fav.count == 1)
        XCTAssertTrue(fav[0].title == "testCocktail")
        
     }

}

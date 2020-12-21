//
//  CocktailAppTests.swift
//  CocktailAppTests
//
//  Created by shauni vansteyvoort on 20/12/2020.
//

import XCTest
@testable import CocktailApp

class CocktailAppTests: XCTestCase {
    
   

   
    let groceryItem: GroceryItem = GroceryItem(name: "Bacardi")
    let groceryItem2: GroceryItem = GroceryItem(name: "Vodka")
   
    
    
    override func setUp() {
      
        
        GroceryRepository.shared.saveGroceries(groceries: [groceryItem,groceryItem2])
    }
    
    func test_Load_GroceryRepository_Returns_GroceryItem(){
        let groceries = GroceryRepository.shared.loadGroceries()
        XCTAssertTrue(groceries.count == 2)
        XCTAssertTrue(groceries[0].name == "Bacardi")
        XCTAssertTrue(groceries[1].name == "Vodka")
        
    }
    
   

}

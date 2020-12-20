//
//  GroceryItem.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 20/12/2020.
//

import Foundation
import SwiftUI
import Combine

struct GroceryItem: Identifiable {
    var id = String()
    var groceryItem = String()
}


class GroceryItemStore: ObservableObject {
    @Published var groceryItems = [GroceryItem]()
}

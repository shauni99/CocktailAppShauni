//
//  CustomGroceryTableViewCell.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 20/12/2020.
//

import UIKit

class CustomGroceryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var groceryName: UILabel!
    
    func update(with grocery: GroceryItem){
        groceryName.text = grocery.name
    }
    
}

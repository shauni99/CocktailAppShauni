//
//  CustomFavoriteTableViewCell.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 18/12/2020.
//

import UIKit

class CustomFavoriteTableViewCell: UITableViewCell {

    @IBOutlet weak var favImage: UIImageView!
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var cocktailTitle: UILabel!
    
    @IBOutlet weak var alcholicLabel: UILabel!
    
    func update(with favCocktail: Cocktail){
        cocktailTitle.text = favCocktail.title
        alcholicLabel.text = favCocktail.alcoholic
        getImage(with: favCocktail)
        
        
        
    }
    
    func getImage(with favCocktail: Cocktail){
        let url = URL(string: favCocktail.image)
         DispatchQueue.global().async {
             let data = try? Data(contentsOf: url!)
             DispatchQueue.main.async {
                self.favImage.image = UIImage(data: data!)
             }
         }
    }
    
   
    

}

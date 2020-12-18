//
//  CustomCategoryTableViewCell.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 18/12/2020.
//

import UIKit

class CustomCategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    func update(with category: Category, with indexPath: IndexPath){
        categoryImage.image = UIImage(named: indexPath.row.description)
        categoryTitle.text = category.strCategory
    }


}

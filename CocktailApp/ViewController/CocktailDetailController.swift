//
//  CocktailDetailController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 04/12/2020.
//

import UIKit

class CocktailDetailController: UIViewController {
    
    var cocktail: Cocktail!
    
    @IBOutlet weak var alcoholicLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var ingredientLabel1: UILabel!
    
    @IBOutlet weak var ingredientLabel2: UILabel!
    @IBOutlet weak var ingredientLabel3: UILabel!
    @IBOutlet weak var ingredientLabel4: UILabel!
    @IBOutlet weak var ingredientLabel5: UILabel!
    @IBOutlet weak var ingredientLabel6: UILabel!
    @IBOutlet weak var ingredientLabel7: UILabel!
    @IBOutlet weak var ingredientLabel8: UILabel!
    @IBOutlet weak var ingredientLabel9: UILabel!
    @IBOutlet weak var ingredientLabel10: UILabel!
    @IBOutlet weak var ingredientLabel11: UILabel!
    @IBOutlet weak var ingredientLabel12: UILabel!
    @IBOutlet weak var ingredientLabel13: UILabel!
    @IBOutlet weak var ingredientLabel14: UILabel!
    @IBOutlet weak var ingredientLabel15: UILabel!
    
    @IBOutlet weak var measureLabel1: UILabel!
    @IBOutlet weak var measureLabel2: UILabel!
    @IBOutlet weak var measureLabel3: UILabel!
    @IBOutlet weak var measureLabel4: UILabel!
    @IBOutlet weak var measureLabel5: UILabel!
    @IBOutlet weak var measureLabel6: UILabel!
    @IBOutlet weak var measureLabel7: UILabel!
    @IBOutlet weak var measureLabel8: UILabel!
    @IBOutlet weak var measureLabel9: UILabel!
    @IBOutlet weak var measureLabel10: UILabel!
    @IBOutlet weak var measureLabel11: UILabel!
    @IBOutlet weak var measureLabel12: UILabel!
    @IBOutlet weak var measureLabel13: UILabel!
    @IBOutlet weak var measureLabel14: UILabel!
    @IBOutlet weak var measureLabel15: UILabel!
    @IBOutlet weak var instructionsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = cocktail.title
      alcoholicLabel.text = cocktail.alcoholic
       instructionsTextView.text = cocktail.instructions
        ingredientLabel1.text = cocktail.strIngredient1
        ingredientLabel2.text = cocktail.strIngredient2
        ingredientLabel3.text = cocktail.strIngredient3
        ingredientLabel4.text = cocktail.strIngredient4
        ingredientLabel5.text = cocktail.strIngredient5
        ingredientLabel6.text = cocktail.strIngredient6
        ingredientLabel7.text = cocktail.strIngredient7
        ingredientLabel8.text = cocktail.strIngredient8
        ingredientLabel9.text = cocktail.strIngredient9
        ingredientLabel10.text = cocktail.strIngredient10
        ingredientLabel11.text = cocktail.strIngredient11
        ingredientLabel12.text = cocktail.strIngredient12
        ingredientLabel13.text = cocktail.strIngredient13
        ingredientLabel14.text = cocktail.strIngredient14
        ingredientLabel15.text = cocktail.strIngredient15
        measureLabel1.text = cocktail.ingredientAmount1
        measureLabel2.text = cocktail.ingredientAmount2
        measureLabel3.text = cocktail.ingredientAmount3
        measureLabel4.text = cocktail.ingredientAmount4
        measureLabel5.text = cocktail.ingredientAmount5
        measureLabel6.text = cocktail.ingredientAmount6
        measureLabel7.text = cocktail.ingredientAmount7
        measureLabel8.text = cocktail.ingredientAmount8
        measureLabel9.text = cocktail.ingredientAmount9
        measureLabel10.text = cocktail.ingredientAmount10
        measureLabel11.text = cocktail.ingredientAmount11
        measureLabel12.text = cocktail.ingredientAmount12
        measureLabel13.text = cocktail.ingredientAmount13
        measureLabel14.text = cocktail.ingredientAmount14
        measureLabel15.text = cocktail.ingredientAmount15

       let url = URL(string: cocktail.image)
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data!)
            }
        }
     
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

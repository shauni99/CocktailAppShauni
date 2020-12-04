//
//  CocktailDetailController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 04/12/2020.
//

import UIKit

class CocktailDetailController: UIViewController {
    
    var cocktail: Cocktail!

    @IBOutlet weak var labelTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitle.text = cocktail.title
        
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

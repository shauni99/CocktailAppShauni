//
//  FavoriteTableViewController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import UIKit

class FavoriteTableViewController: UITableViewController{


    override func viewDidLoad() {
        super.viewDidLoad()
        FavoriteRepository.shared.loadFavorite()
        NotificationCenter.default.addObserver(tableView!, selector:#selector(UITableView.reloadData), name:
        CocktailController.favoriteUpdatedNotification, object: nil)
     
    }

    // MARK: - Table view data source

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CocktailController.shared.favorite.favCocktails.count
    }
    
   

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCellIdentifier", for: indexPath) as! CustomFavoriteTableViewCell
        
        let favCocktail =
               CocktailController.shared.favorite.favCocktails[indexPath.row]
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.favImage.layer.cornerRadius = cell.favImage.frame.height / 2
        cell.update(with: favCocktail)
          
       

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    
    // MARK: - Navigation

 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "FavoriteCocktailDetailSegue" {
         let cocktailDetailController = segue.destination as!
         CocktailDetailController
         let index = tableView.indexPathForSelectedRow!.row
        cocktailDetailController.cocktail = CocktailController.shared.favorite.favCocktails[index]
     }
 }

}



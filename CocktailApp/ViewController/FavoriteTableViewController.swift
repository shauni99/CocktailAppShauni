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
       
        NotificationCenter.default.addObserver(tableView, selector:#selector(UITableView.reloadData), name:
        CocktailController.favoriteUpdatedNotification, object: nil)
     
    }

    // MARK: - Table view data source

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CocktailController.shared.favorite.favCocktails.count
    }
    
   

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCellIdentifier", for: indexPath)
        
        let favCocktail =
               CocktailController.shared.favorite.favCocktails[indexPath.row]
        cell.textLabel?.text = favCocktail.title
          
       

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
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



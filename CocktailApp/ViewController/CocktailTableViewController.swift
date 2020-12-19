//
//  CocktailTableViewController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import UIKit

class CocktailTableViewController: UITableViewController {
    var category : String!
    var cocktails = [Cocktail]()

    override func viewDidLoad() {
        navigationItem.title = category
        super.viewDidLoad()
        
        CocktailController.shared.fetchCocktails(forCategory: category) { (cocktails) in
                  if let cocktails = cocktails {
                    self.updateUI(with: cocktails)
                  }
                }
    }
    
    func updateUI(with cocktails: [Cocktail]) {
            DispatchQueue.main.async {
                self.cocktails = cocktails
                self.tableView.reloadData()
            }
        }


    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return cocktails.count
       
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CocktailIdentifierCell", for: indexPath)

        let cocktail = cocktails[indexPath.row]
        cell.textLabel?.text = cocktail.title
        

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CocktailDetailSegue" {
            let cocktailDetailController = segue.destination as!
            CocktailDetailController
            let index = tableView.indexPathForSelectedRow!.row
            cocktailDetailController.cocktail = cocktails[index]
        }
    }
    

}

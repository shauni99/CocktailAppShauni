//
//  CategoryTableViewController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 01/12/2020.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    var categories = [Category]()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        CocktailController.shared.fetchCategories { (categories) in
                  if let categories = categories {
                    self.updateUI(with: categories)
                  }
                }
    }
    
    func updateUI(with categories: [Category]) {
          DispatchQueue.main.async {
              self.categories = categories
              self.tableView.reloadData()
          }
    }
       
    
  
    
   

       
   

    // MARK: - Table view data source

  
   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath) as! CustomCategoryTableViewCell
    let category = categories[indexPath.row]
    cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
    cell.categoryImage.layer.cornerRadius = cell.categoryImage.frame.height / 2
    cell.update(with: category, with: indexPath)
    
     

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
  
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender:
    Any?) {
        if segue.identifier == "ShowCocktailsPerCategory" {
            let cocktailTableViewController = segue.destination as!
            CocktailTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            cocktailTableViewController.category = categories[index].strCategory
        }
    }

}

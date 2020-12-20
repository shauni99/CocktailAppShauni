//
//  GroceryViewController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 20/12/2020.
//

import UIKit

class GroceryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var groceries = [GroceryItem]()

  
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func AddGrocery(_ sender: UIButton) {
        
        if !textField.text!.isEmpty {
            addGrocery()
        }
    }
    
    func addGrocery() {
        groceries.append(GroceryItem(name: textField.text!))
        GroceryRepository.shared.saveGroceries(groceries: groceries)
        tableView.reloadData()
        textField.text = ""
    }
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        groceries = GroceryRepository.shared.loadGroceries()
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryCell", for: indexPath) as! CustomGroceryTableViewCell
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        let grocery = groceries[indexPath.row]
        cell.update(with: grocery)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groceries.remove(at: indexPath.row)
            GroceryRepository.shared.saveGroceries(groceries: groceries)
            tableView.reloadData()

        }
    }
    

}

//
//  ViewController.swift
//  Adidala_GroceryApp
//
//  Created by Adidala,Sindhuja on 4/12/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = sections[indexPath.row].section
        return cell
    }
    
    var sections:[GrocerySections] = Sections
    @IBOutlet weak var grocerySectionsTableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
        
        self.title = "GrocerySections"
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
                if transition == "itemsSegue"{
                    let destination = segue.destination as! GroceryItemsViewController
                    
                    destination.sections = sections[(grocerySectionsTableView.indexPathForSelectedRow?.row)!]
                }
    }

}


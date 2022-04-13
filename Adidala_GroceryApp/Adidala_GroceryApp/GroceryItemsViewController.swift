//
//  GroceryItemsViewController.swift
//  Adidala_GroceryApp
//
//  Created by Adidala,Sindhuja on 4/12/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].itemName
        return cell
        
    }
    

    var sections:GrocerySections?
    var items:[GroceryItem] = []
    
    @IBOutlet weak var groceryItemsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
        items = ((sections?.items_array)!)
        self.title = (sections?.section)!
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            
            destination.item = items[(groceryItemsTableView.indexPathForSelectedRow?.row)!]
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

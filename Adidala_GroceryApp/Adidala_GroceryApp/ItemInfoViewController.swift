//
//  ItemInfoViewController.swift
//  Adidala_GroceryApp
//
//  Created by Adidala,Sindhuja on 4/12/22.
//

import UIKit

class ItemInfoViewController: UIViewController {
    
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    
    var item:GroceryItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        itemImageViewOutlet.image = UIImage(named: (item?.itemImage)!)
        itemInfoOutlet.isHidden = true
        self.title = (item?.itemName)!
        var width = itemImageViewOutlet.frame.width
        width += 50
        var height = itemImageViewOutlet.frame.height
        height += 50
        var x =  itemImageViewOutlet.frame.origin.x
        var y = itemImageViewOutlet.frame.origin.y
        var largerFrame = CGRect(x: x, y: y, width: width, height: height)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                            self.itemImageViewOutlet.frame = largerFrame
                        })
    }
    
    @IBAction func showItemInfoAction(_ sender: UIButton) {
        print("hello")
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text = "\((item?.itemInfo)!)"
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

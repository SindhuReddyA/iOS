//
//  ViewController.swift
//  CordinatesDemo
//
//  Created by Adidala,Sindhuja on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

     
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minX = imageView.frame.minX;
        let minY = imageView.frame.minY;
        print(minX,",",minY);
        
        let maxX = imageView.frame.maxX;
        let maxY = imageView.frame.maxY;
        print(maxX,",",maxY);
        
        let midX = imageView.frame.midX;
        let midY = imageView.frame.midY;
        print(midX,",",midY);
        //move the location of the object to the upper left corner 0,0
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 0
        
        //move the location of the object to the upper right corner 314,0
        
        imageView.frame.origin.x = 314
        imageView.frame.origin.y = 0
        
        //move the location of the object to the lower left corner 0,796
        
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 796
        
        //move the location of the object to the lower right corner 314,796
        
        imageView.frame.origin.x = 314
        imageView.frame.origin.y = 796

        //move the location of the object to the centre 157(414/2-50),398(
        
        imageView.frame.origin.x = 157
        imageView.frame.origin.y = 398
        
        
    }
}

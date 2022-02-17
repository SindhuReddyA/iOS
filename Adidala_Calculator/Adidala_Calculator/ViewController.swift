//
//  ViewController.swift
//  Adidala_Calculator
//
//  Created by Adidala,Sindhuja on 2/17/22.
//

import UIKit

class ViewController: UIViewController {

    var x = 0
        var operator1:String = ""
        var y = 0
        var a = 0.0
        var b = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayLabel: UILabel!
   
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text = ""
                x = 0
                operator1 = ""
                y = 0
                a = 0.0
                b = 0.0
        displayLabel.text! = ""
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        displayLabel.text! = ""
 }
    
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        if(displayLabel.text!.first == "-"){
            displayLabel.text!.removeFirst()
    }
    else
    {
        displayLabel.text! = "-\(displayLabel.text!)"
    }
         
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
                   a = (displayLabel.text! as NSString).doubleValue
                   operator1 = "/"
                   displayLabel.text = ""
               }
        
    }
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
         if(!displayLabel.text!.isEmpty){
            x = (displayLabel.text! as NSString).integerValue
            operator1 = "*"
            displayLabel.text = ""
    }
    }
    
    @IBAction func buttonSubstraction(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
                    if(displayLabel.text!.contains("."))
                    {
                    a = (displayLabel.text! as NSString).doubleValue
                    }
                    else{
                        x = (displayLabel.text! as NSString).integerValue
                    }
                    operator1 = "-"
                    displayLabel.text = ""
                }
                else{
                displayLabel.text = "-"
                }
    }
    
    @IBAction func buttonAddition(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
                    if(displayLabel.text!.contains("."))
                    {
                        a = (displayLabel.text! as NSString).doubleValue
                    }
                    else{
                        x = (displayLabel.text! as NSString).integerValue
                    }
                    operator1 = "+"
                    displayLabel.text = ""
                }
                else{
                displayLabel.text = "+"
                }
    }
    
   
    @IBAction func buttonEquals(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
                    if(displayLabel.text!.contains("."))
                    {
                        b = (displayLabel.text! as NSString).doubleValue
                        if(!(b==0.0)){
                            var temp = 0.0
                            switch(operator1)
                            {
                            case "+" : temp = a + b
                                if(temp.truncatingRemainder(dividingBy: 1)==0) {
                                    
                                    displayLabel.text = "\(Int(temp))"
                                }
                                else{
                                    displayLabel.text = "\(temp)"
                                }
                                
                            case "-" : displayLabel.text = "\(a - b)"
                                
                            case "*" :  displayLabel.text = "\(a * b)"
                            
                            case "/" : displayLabel.text = "\(a / b)"
                                
                            case "%": displayLabel.text = "\(Double(round(a.truncatingRemainder(dividingBy: b)*10)/10))"
                                
                            default: displayLabel.text = ""
                            }
                        }
                    }
                    else{
                        y = (displayLabel.text! as NSString).integerValue
                        if(!(y==0)){
                            switch(operator1)
                            {
                            case "+" : displayLabel.text = "\(x + y)"
                                
                            case "-" : displayLabel.text = "\(x - y)"
                                
                            case "*" : displayLabel.text = "\(x * y)"
                                
                            case "/" : displayLabel.text = "\(round((a / Double(y))*100000)/100000)"
                            case "%": displayLabel.text = "\(x % y)"
                            default: displayLabel.text = ""
                            }
                        }
                        else{
                            displayLabel.text = "ERROR"
                        }
                             }
    }
    }
    
    @IBAction func buttonModulo(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
                    if(displayLabel.text!.contains("."))
                    {
                        a = (displayLabel.text! as NSString).doubleValue
                    }
                    else{
                        x = (displayLabel.text! as NSString).integerValue
                    }
                    operator1 = "%"
                    displayLabel.text = ""
                }
    }
    
    @IBAction func button0(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "0"
    }
    
    
    @IBAction func buttonDot(_ sender: UIButton) {
        
        displayLabel.text! = displayLabel.text! + "."
     
    }
    
    @IBAction func button3(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "3"
    }
    
    @IBAction func button2(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "2"
    }
    
    @IBAction func button1(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "1"
    }
    
    @IBAction func button4(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "4"
    }
    
    @IBAction func button5(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "5"
    }
    
    
    @IBAction func button6(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "6"
    }
    
    @IBAction func button7(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "7"
    }
    
    @IBAction func button8(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "8"
    }
    
    @IBAction func button9(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "9"
    }
}


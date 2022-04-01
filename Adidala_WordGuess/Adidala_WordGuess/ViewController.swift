//
//  ViewController.swift
//  Adidala_WordGuess
//
//  Created by student on 3/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessALetterButton: UIButton!
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    var words = [["LAYS", "Chips"],["DUKE", "Two Wheeler"],
                 ["AIRPODS", "Electronics"],
                 ["ICECREAM","Dessert"],["LADDU","Sweet"]]
    var images = ["lays","duke","airpods","icecream","laddu","tryagain"]
    
    var count = 0
    var lettersGuessed = ""
    var word = ""
    var inc = 0
    var maxNumOfWrongGuesses = 10
    var str1 = ""
    var str2 = ""
    var str3 = ""
    var c1 = 0
    var c2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guessALetterButton.isEnabled = false
        word = words[count][0]
        userGuessLabel.text = ""
        str1 = wordsGuessedLabel.text!
        str2 = wordsMissedLabel.text!
        str3 = wordsRemainingLabel.text!
        totalWordsLabel.text = totalWordsLabel.text!+String(words.count)
        wordsGuessedLabel.text = str1+String(count)
        wordsRemainingLabel.text = str3+String(words.count)
        wordsMissedLabel.text = str2+String(count)
        
        updateUnderscores();
        
        hintLabel.text = "Hint: "+words[count][1]
        
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        let letter = guessLetterField.text!
        guessLetterField.resignFirstResponder()
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_ "
            }
            
        }
        inc = inc + 1
        guessCountLabel.text = "You have made \(inc)  Guesses";
        maxNumOfWrongGuesses = maxNumOfWrongGuesses - 1
        userGuessLabel.text = revealedWord
        guessLetterField.text = ""
        if (userGuessLabel.text!.contains("_") == false){
            count += 1
            guessCountLabel.text = "You won! it took you \(inc) attemps to guess the word!";
            guessLetterField.isEnabled = false
            c1 = c1 + 1
            wordsGuessedLabel.text = str1+String(c1)
            wordsMissedLabel.text = str2+String(c2)
            wordsRemainingLabel.text = str3+String((words.count) - count)
            maxNumOfWrongGuesses = 10
            inc = 0
            playAgainButton.isHidden = false;
            guessALetterButton.isEnabled = false;
            imageViewOutlet.image = UIImage(named: images[count-1])
//            UIView.animate(withDuration: 1,  animations: {
//                self.imageViewOutlet.center.x = self.view.center.x
//            },completion: nil)
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, animations: {
                self.imageViewOutlet.frame.origin.x = -100
                self.imageViewOutlet.frame.origin.y = -100
                self.imageViewOutlet.image = UIImage(named: self.images[self.count-1])
            },completion: {_ in
                self.imageViewOutlet.frame.origin.x = 100
                self.imageViewOutlet.frame.origin.y = 650
            })
            if (count == words.count){
                guessCountLabel.text = "You have tried all the words! Restart from the beginnning?"
                c1 = 0
                c2 = 0
                count = 0
            }
            
        }
        if(maxNumOfWrongGuesses == 0 && userGuessLabel.text!.contains("_") == true){
            count += 1
            inc = 0
            c2 = c2 + 1
            guessCountLabel.text = "You are out of all guesses. Try again?";
            guessLetterField.isEnabled = false
            wordsGuessedLabel.text = str1+String(c1)
            wordsMissedLabel.text = str2+String(c2)
            wordsRemainingLabel.text = str3+String((words.count) - count)
            maxNumOfWrongGuesses = 10
            playAgainButton.isHidden = false;
            guessALetterButton.isEnabled = false;
//            imageViewOutlet.image = UIImage(named: images[5])
//            UIView.animate(withDuration: 1,  animations: {
//                self.imageViewOutlet.center.x = self.view.center.x
//            })
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, animations: {
                self.imageViewOutlet.frame.origin.x = -100
                self.imageViewOutlet.frame.origin.y = -100
                self.imageViewOutlet.image = UIImage(named: self.images[5])
            },completion: {_ in
                self.imageViewOutlet.frame.origin.x = 100
                self.imageViewOutlet.frame.origin.y = 650
            })
            if (count == words.count){
                guessCountLabel.text = "You have tried all the words! Restart from the beginnning?"
                c1 = 0
                c2 = 0
                count = 0
            }
        }
        guessALetterButton.isEnabled = false
    }
    
    
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        playAgainButton.isHidden = true
        imageViewOutlet.image = UIImage(named: "")
        lettersGuessed = ""
        wordsRemainingLabel.text = str3+String((words.count) - count)
        if(count == 0){
            word = words[count][0]
            userGuessLabel.text = ""
            updateUnderscores()
            guessLetterField.isEnabled = true
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            wordsGuessedLabel.text = str1+String(c1)
            wordsMissedLabel.text = str2+String(c2)
            wordsRemainingLabel.text = str3+String((words.count) - count)
            guessCountLabel.text = "You have made \(inc)  Guesses";
        }
        else{
            word = words[count][0]
            guessCountLabel.text = "You have made \(inc)  Guesses";
            guessLetterField.isEnabled = true
            //fetch the hint related to the word
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            //Enabling the check button.
            guessALetterButton.isEnabled = false
            userGuessLabel.text = ""
            updateUnderscores()
        }
        
        
        
    }
    
    @IBAction func guessLFAction(_ sender: UITextField) {
        var textEnterd = guessLetterField.text!;
        textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEnterd
        
        if textEnterd.isEmpty{
            guessALetterButton.isEnabled = false
        }
        else{
            guessALetterButton.isEnabled = true
        }
    }
    
    func updateUnderscores(){
        for _ in word{
            userGuessLabel.text! += "_ "
        }
    }
    
    
    
}

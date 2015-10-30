//
//  ViewController.swift
//  helloworld
//
//  Created by Kasper Peulen on 10/26/15.
//  Copyright © 2015 Kasper Peulen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var chosenNumber:Int = random() % 1000;
    
    var count:Int = 0;
    
    @IBOutlet weak var judgeLabel: UILabel!;
    
    @IBOutlet weak var textField: UITextField!;
    
    @IBOutlet weak var history: UITextView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var complimentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        complimentLabel.text = "";
        judgeLabel.text = "";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sendName(sender: AnyObject) {
        if (button.titleLabel!.text == "Restart") {
            textField.enabled = true;
            count = 0;
            chosenNumber = random() % 1000;
            judgeLabel.text = "";
            complimentLabel.text = "";
            
            button.setTitle("Guess", forState: .Normal)
            return;
        }
        
        let text:String = textField.text!;
        // reset text field
        textField.text = "";
        let number = Int(text);
        
        if (number < chosenNumber) {
            judgeLabel.text = "Too low!";
            count += 1;
        } else if (number > chosenNumber) {
            judgeLabel.text = "Too high!";
            count += 1;
        } else {
            count += 1;
            judgeLabel.text = "Correct.";
            complimentLabel.text = "\(getCompliment(count))";
            history.text = "\(history.text)\n\(count)";
            textField.enabled = false;
            button.setTitle("Restart", forState: .Normal)
        }
    }
    
    func getCompliment(count: Int) -> String {
        switch count {
        case 1...10:
            return "Perfect! You did this in \(count) steps."
        case 11...20:
            return "Good! You did this in \(count) steps."
        case 21...30:
            return "Really... you needed \(count) steps?!?"
        default:
            return "It took you \(count). Maybe try again, when you are sober?"
        }
    }
}


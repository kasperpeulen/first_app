//
//  ViewController.swift
//  helloworld
//
//  Created by Kasper Peulen on 10/26/15.
//  Copyright © 2015 Kasper Peulen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sendName(sender: AnyObject) {
        nameLabel.text = "Hello, \(textField.text!)"
    }
}

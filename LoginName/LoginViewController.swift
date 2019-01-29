//
//  LoginViewController.swift
//  LoginName
//
//  Created by Eliana Boado on 1/29/19.
//  Copyright © 2019 Eliana Boado. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func returnButtonPressed(_ sender: UITextField) {
        sender.resignFirstResponder();   //Dismiss the UITextField's keyboard.

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let viewController: ViewController = segue.destination as? ViewController{
            if let text: String = textField.text {
                //Transmit information from the LoginViewController to the ViewController.
                viewController.loginName = text;
            }
        }
    }
}

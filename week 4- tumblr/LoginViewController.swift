//
//  LoginViewController.swift
//  week 4- tumblr
//
//  Created by Lauren Tindal on 11/7/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.inputTextField.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressCancel(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }

}

//
//  SignUpViewController.swift
//  Black Pages
//
//  Created by Nathan Dudley on 7/19/18.
//  Copyright © 2018 Nathan Dudley. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
   
    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: userEmailTextField.text!, password: userPasswordTextField.text!) { (user, error) in
            if user != nil {
                print("user Created")
                let alertController = UIAlertController(title: "Success", message: nil, preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(okButton)
                self.present(alertController, animated: true, completion: nil)
                }
            
            if error != nil{
                print("Error")
                let alert = UIAlertController(title: "There was a problem", message: nil, preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}


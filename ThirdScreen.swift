//
//  SignInPage.swift
//  Black Pages
//
//  Created by Nathan Dudley on 7/19/18.
//  Copyright © 2018 Nathan Dudley. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class SignInPage:UIViewController {
   
    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: userEmailTextField.text!, password: userPasswordTextField.text!) { (user, error) in
            
            
            
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        // Check For Empty Fields
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)!) {
            
            // Display alert message
            
            displayMyAlertMessage(userMessage: "All fields are required");
            
            return;
        }
        
        // Check if passwords match
        if(userPassword != userRepeatPassword) {
            
            // Display an alert message
            displayMyAlertMessage(userMessage: "Passwords do not match");
            
            return;
        }
        
        // Store Data
        
        
        // Display alert message with confirmation
    }
    
    func displayMyAlertMessage(userMessage:String) {
        var myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
        
    }
    
}

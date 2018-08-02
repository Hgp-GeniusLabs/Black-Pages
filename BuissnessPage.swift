//
//  BuissnessPage.swift
//  Black Pages
//
//  Created by Nathan Dudley on 7/30/18.
//  Copyright © 2018 Nathan Dudley. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class BuissnessPage:UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func logOutButton(_ sender: UIButton) {
        do {
            try Auth.auth().signOut()
            print("user logged out")
        }
        catch {
            print("Couldn't log out")
        }
    }
    
    
}

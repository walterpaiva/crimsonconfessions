//
//  ViewController.swift
//  Crimson Confessions
//
//  Created by Walter Paiva on 11/25/18.
//  Copyright © 2018 Crimson Confessions. All rights reserved.
//

import UIKit
import FirebaseUI

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}


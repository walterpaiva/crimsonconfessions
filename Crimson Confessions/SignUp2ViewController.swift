//
//  SignUp2ViewController.swift
//  Crimson Confessions
//
//  Created by Walter Paiva on 12/1/18.
//  Copyright © 2018 Crimson Confessions. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class SignUp2ViewController: UIViewController {
    
    @IBOutlet weak var gradyear: UITextField!
    @IBOutlet weak var gender: UITextField!
    
    
    var ref:DatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    @IBAction func submitFurther(_ sender: Any) {
        
        let userID = Auth.auth().currentUser?.uid
        ref?.child("confessions").child(userID!).updateChildValues(["house": house.text])
        ref?.child("confessions").child(userID!).updateChildValues(["gradyear": gradyear.text])
        ref?.child("confessions").child(userID!).updateChildValues(["gender": gender.text])
    
        self.performSegue(withIdentifier: "signUpToHome", sender: self)
    }
}

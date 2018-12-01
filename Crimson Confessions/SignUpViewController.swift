//
//  SignUpViewController.swift
//  Crimson Confessions
//
//  Created by Walter Paiva on 12/1/18.
//  Copyright © 2018 Crimson Confessions. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController:UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirm: UITextField!
    
    @IBAction func signUpAction(_ sender: Any) {
        if password.text != confirm.text {
            let alertController = UIAlertController(title: "Passwords do not match", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "signUpFurther", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
}
}

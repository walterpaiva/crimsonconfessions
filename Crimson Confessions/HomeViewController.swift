//
//  HomeViewController.swift
//  Crimson Confessions
//
//  Created by Walter Paiva on 12/1/18.
//  Copyright © 2018 Crimson Confessions. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }

}

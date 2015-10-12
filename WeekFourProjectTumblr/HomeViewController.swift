//
//  HomeViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/7/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var explorePopupView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animateWithDuration(0.5, delay: 0.4,
            options: [.Repeat, .Autoreverse, .CurveEaseOut], animations: {
            self.explorePopupView.center.y = self.explorePopupView.center.y + 10
            }, completion: nil)
    }

        
//        if emailUserName.text == "tim@thecodepath.com" && password.text == "password" {
//            performSegueWithIdentifier("signInWithPasswordSegue", sender: nil)
//            
//            self.loginActivityIndicator.hidden = false
//            self.loginActivityIndicator.startAnimating()
//            delay(2.0, closure: { () -> () in
//                self.loginActivityIndicator.hidden = true
//                self.loginActivityIndicator.stopAnimating()
//                
//                self.performSegueWithIdentifier("signInWithPasswordSegue", sender: nil)
//            })
//            
//        }
//            
//        else {
//            
//            let signInFailedAlert = UIAlertController(title: "Sign in Failed", message: "Incorrect email or password", preferredStyle: .Alert)
//            
//            let defaultAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
//            signInFailedAlert.addAction(defaultAction)
//            
//            presentViewController(signInFailedAlert, animated: true, completion: nil)
//        }
//    }
//}
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
    }
}
    


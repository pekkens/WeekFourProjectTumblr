//
//  HomeViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/7/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var explorePopupView: UIImageView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var loginContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginContainer.alpha = 0
        
        UIView.animateWithDuration(0.5, delay: 0.4,
            options: [.Repeat, .Autoreverse, .CurveEaseOut], animations: {
                self.explorePopupView.center.y = self.explorePopupView.center.y + 10
            }, completion: nil)
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        UIView.animateWithDuration(0.3) { () -> Void in
            self.loginContainer.alpha = 1
            
            print(self.loginButtonPressed)
        }
    }
    
    @IBAction func cancelLogInButtonPressed(sender: AnyObject) {
        loginContainer.alpha = 0
        self.view.endEditing(true)

        //TODO: dismiss UIview instead of alpha
    }
}

        
//TODO:  In process of building login view programically
        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let presentLogInViewController: LogInViewController = storyboard.instantiateViewControllerWithIdentifier("LogInViewController") as! LogInViewController
//        
//        self.presentViewController(presentLogInViewController, animated: true, completion: nil)



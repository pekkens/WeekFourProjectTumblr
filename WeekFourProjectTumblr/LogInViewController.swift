//
//  LogInViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/12/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.isTumblrBlue()
        
        let loginContainer = UIView()
        loginContainer.backgroundColor = UIColor.whiteColor()
        loginContainer.frame = CGRect(x: 10, y: 180, width: 300, height: 130)
        loginContainer.layer.cornerRadius = 15
        loginContainer.center = view.center
        view.addSubview(loginContainer)
        
        let enterEmail = UITextField()
        enterEmail.backgroundColor = UIColor.whiteColor()
        enterEmail.frame = CGRect(x: 25, y: 225, width: 275, height: 40)
        enterEmail.layer.cornerRadius = 10
        enterEmail.placeholder = "Email"
        view.addSubview(enterEmail)
        
        let enterPassword = UITextField()
        enterPassword.backgroundColor = UIColor.whiteColor()
        enterPassword.frame = CGRect(x: 25, y: 275, width: 275, height: 40)
        enterPassword.layer.cornerRadius = 10
        enterPassword.placeholder = "Password"
        view.addSubview(enterPassword)
        
    }
    
    func printEmail(email: String) {
        print(email)
        
        func forgotPassword() {
            
            let forgotPasswordController = UIAlertController(title: "Forgot Password?", message: "Please Enter Your Email", preferredStyle: UIAlertControllerStyle.Alert)
            
            let emailAction = UIAlertAction(title: "Submit", style: UIAlertActionStyle.Default) { (alertAction) in
            let emailTextField = forgotPasswordController.textFields![0]
            self.printEmail(emailTextField.text!)
            
            }
            
            emailAction.enabled = false
            
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil)
            
            forgotPasswordController.addTextFieldWithConfigurationHandler { (textField) in
                textField.placeholder = "Email"
                textField.keyboardType = UIKeyboardType.EmailAddress
                
                NSNotificationCenter.defaultCenter().addObserverForName(UITextFieldTextDidChangeNotification, object: textField, queue: NSOperationQueue.mainQueue(), usingBlock: { (notification) in
                    emailAction.enabled = textField.text != ""
                })
            }
            
            forgotPasswordController.addAction(emailAction)
            forgotPasswordController.addAction(cancelAction)
            
            self.presentViewController(forgotPasswordController, animated: true, completion: nil)
        }
        
    }}



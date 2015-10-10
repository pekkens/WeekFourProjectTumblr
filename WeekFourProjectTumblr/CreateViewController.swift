//
//  CreateViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/7/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    @IBOutlet weak var ghostedBackgroundView: UIView!
    @IBOutlet weak var textIconView: UIImageView!
    @IBOutlet weak var photoIconView: UIImageView!
    @IBOutlet weak var quoteIconView: UIImageView!
    @IBOutlet weak var linkIconView: UIImageView!
    @IBOutlet weak var chatIconView: UIImageView!
    @IBOutlet weak var videoIconView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textIconView.alpha = 0
        photoIconView.alpha = 0
        quoteIconView.alpha = 0
        linkIconView.alpha = 0
        chatIconView.alpha = 0
        videoIconView.alpha = 0
        
        // a += 2 is shorthand for a = a + 2.
        
        textIconView.center.y = textIconView.center.y + view.bounds.width
        photoIconView.center.y += view.bounds.width
        quoteIconView.center.y += view.bounds.width
        linkIconView.center.y  += view.bounds.width
        chatIconView.center.y  += view.bounds.width
        videoIconView.center.y  += view.bounds.width
        
        print(textIconView)
        
        }
    
    @IBAction func nevermindButttonPressed(sender: AnyObject) {
        
        UIView.animateWithDuration(5.0, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.textIconView.center.y -= self.view.bounds.width + 50
            self.textIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(5.0, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.photoIconView.center.y -= self.view.bounds.width + 50
            self.photoIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.quoteIconView.center.y -= self.view.bounds.width + 50
            self.quoteIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.5, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.linkIconView.center.y -= self.view.bounds.width + 50
            self.linkIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.chatIconView.center.y -= self.view.bounds.width + 50
            self.chatIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.6, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: { () -> Void in
            self.videoIconView.center.y -= self.view.bounds.width + 50
            self.videoIconView.alpha = 1.0
            }) { (Bool) -> Void in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        UIView.animateWithDuration(1.0, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.textIconView.center.y -= self.view.bounds.width
            self.textIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.photoIconView.center.y -= self.view.bounds.width
            self.photoIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.quoteIconView.center.y -= self.view.bounds.width
            self.quoteIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.5, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.linkIconView.center.y -= self.view.bounds.width
            self.linkIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.2, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.chatIconView.center.y -= self.view.bounds.width
            self.chatIconView.alpha = 1.0
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.6, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.2, options: [], animations: {
            self.videoIconView.center.y -= self.view.bounds.width
            self.videoIconView.alpha = 1.0
            }, completion: nil)}
}





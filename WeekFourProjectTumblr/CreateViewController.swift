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
        
        let upAnimation = CGAffineTransformMakeTranslation(0, -350)
        
        UIView.animateWithDuration(0.3, delay: 1, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.textIconView.center.y = 600
            self.textIconView.alpha = 1
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    self.textIconView.transform = upAnimation
                })
        }
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.photoIconView.center.y = 600
            self.photoIconView.alpha = 1
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.2, animations: { () -> Void in
                    self.photoIconView.transform = upAnimation
                })
        }
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.quoteIconView.center.y = 600
            self.quoteIconView.alpha = 1
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.quoteIconView.transform = upAnimation
                })
        }
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.linkIconView.center.y = 720
            self.linkIconView.alpha = 1
            }) { (Bool) -> Void in
                UIView.animateWithDuration(1.0, animations: { () -> Void in
                    self.linkIconView.transform = upAnimation
                })
        }
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.chatIconView.center.y = 720
            self.chatIconView.alpha = 1
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.8, animations: { () -> Void in
                    self.chatIconView.transform = upAnimation
                })
        }
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.videoIconView.center.y = 720
            self.videoIconView.alpha = 1
            }) { (Bool) -> Void in
                UIView.animateWithDuration(1.5, animations: { () -> Void in
                    self.videoIconView.transform = upAnimation
                })
        }
        
    }
    
    @IBAction func nevermindButttonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}





//
//  CustomTabBarViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/7/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UIViewController {

    @IBOutlet weak var loadContentView: UIView!
    @IBOutlet weak var tabBarContainerView: UIView!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var progressBar: UIImageView!
    
//  MARK: variables
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var createViewController: UIViewController!
    
    var loadingOne: UIImage!
    var loadingTwo: UIImage!
    var loadingThree: UIImage!
    var imagesToAnimate: [UIImage]! //array
    var animatedProgressBar: UIImage!
    

    

    
//  MARK: on view did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //color
        
        self.loadContentView.backgroundColor = UIColor.isTumblrBlue()
        self.tabBarContainerView.backgroundColor = UIColor.isTumblrBlue()

        
        //"Main" refers to name of storyboard as in "Main.storyboard"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //call view = build view
        
        homeViewController =
            storyboard.instantiateViewControllerWithIdentifier ("HomeViewController") as UIViewController
        
        searchViewController =
            storyboard.instantiateViewControllerWithIdentifier ("SearchViewController") as UIViewController
        
        accountViewController =
            storyboard.instantiateViewControllerWithIdentifier ("AccountViewController") as UIViewController
        
        trendingViewController =
            storyboard.instantiateViewControllerWithIdentifier ("TrendingViewController") as UIViewController
        
        createViewController =
            storyboard.instantiateViewControllerWithIdentifier ("CreateViewController") as UIViewController
        
        //Array for progress bar animation
        
        loadingOne = UIImage(named: "loading-1")
        loadingTwo = UIImage(named: "loading-2")
        loadingThree = UIImage(named: "loading-3")
        
        imagesToAnimate = [loadingOne, loadingTwo, loadingThree]

        animatedProgressBar = UIImage.animatedImageWithImages(imagesToAnimate, duration: 1.0)
        
        progressBar.image = animatedProgressBar
        
    }
    
    
//  MARK: Actions
    
    @IBAction func homeButtonPressed(sender: UIButton) {
        loadContentView.addSubview(homeViewController.view)
        sender.selected = true
        searchButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
        
    }
    
    @IBAction func searchButtonPressed(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, delay: 2.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: [], animations: {
            self.loadContentView.addSubview(self.searchViewController.view)
            }, completion: nil)
        
        sender.selected = true
        homeButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
        
    }
    
    @IBAction func accountButtonPressed(sender: UIButton) {
        loadContentView.addSubview(accountViewController.view)
        sender.selected = true
        homeButton.selected = false
        searchButton.selected = false
        trendingButton.selected = false
        
    }
    
    @IBAction func trendingButtonPressed(sender: UIButton) {
        loadContentView.addSubview(trendingViewController.view)
        sender.selected = true
        homeButton.selected = false
        accountButton.selected = false
        searchButton.selected = false
        
    }
    
    @IBAction func createButtonPressed(sender: UIButton) {
        performSegueWithIdentifier("CreateViewControllerSegue", sender: nil)
    
        
    }
    
    
    
    
    
    
}

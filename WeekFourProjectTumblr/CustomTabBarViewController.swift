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
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    
//  MARK: variables
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var profileViewController: UIViewController!
    var trendingViewController: UIViewController!

    
//  MARK: on view did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //color
        
        self.loadContentView.backgroundColor = UIColor.isTumblrBlue()
        self.tabBarContainerView.backgroundColor = UIColor.isTumblrBlue()

        //load storyboard, call/build view. 
        //"Main" refers to name of storyboard as in "Main.storyboard"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController =
            storyboard.instantiateViewControllerWithIdentifier ("HomeViewController") as UIViewController
        
        searchViewController =
            storyboard.instantiateViewControllerWithIdentifier ("SearchViewController") as UIViewController
        
        profileViewController =
            storyboard.instantiateViewControllerWithIdentifier ("ProfileViewController") as UIViewController
        
        trendingViewController =
            storyboard.instantiateViewControllerWithIdentifier ("TrendingViewController") as UIViewController
    }
    
    
//  MARK: Actions
    
    @IBAction func homeButtonPressed(sender: AnyObject) {
        loadContentView.addSubview(homeViewController.view)
    }
    
    
    @IBAction func searchButtonPressed(sender: AnyObject) {
        loadContentView.addSubview(searchViewController.view)
    }
    
    
    @IBAction func profileButtonPressed(sender: AnyObject) {
        loadContentView.addSubview(profileViewController.view)
    }
    

    @IBAction func trendingButtonPressed(sender: AnyObject) {
        loadContentView.addSubview(trendingViewController.view)
    }
    
}

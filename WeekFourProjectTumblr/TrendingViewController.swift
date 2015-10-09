//
//  ActivityViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/7/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var trendingScrollView: UIScrollView!
    
    @IBOutlet weak var trendingFeedView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        trendingScrollView.contentSize = CGSizeMake(320, trendingFeedView.image!.size.height)
        trendingScrollView.delegate = self
    }
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject:AnyObject]?) -> Bool {
        application.statusBarHidden = true
        return true
    }
}

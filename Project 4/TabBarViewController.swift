//
//  TabBarViewController.swift
//  Project 4
//
//  Created by Chris Mikelson on 10/11/15.
//  Copyright © 2015 Chris Mikelson. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var currentViewController: UIViewController!
    var previousButton: UIButton!

    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        homeViewController.view.frame = contentView.bounds
        
        currentViewController = homeViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onHomeButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        
        button.selected = true
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        homeViewController.view.frame = contentView.bounds
        
        previousButton = button
        currentViewController = homeViewController
    }
    @IBAction func onSearchButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        
        button.selected = true
        contentView.addSubview(searchViewController.view)
        searchViewController.view.frame = contentView.bounds
        
        previousButton = button
        currentViewController = searchViewController
    }
    
    @IBAction func onComposeButton(button: UIButton) {
        
        

        
    }
    
    @IBAction func onAccountButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        
        button.selected = true
        contentView.addSubview(accountViewController.view)
        accountViewController.view.frame = contentView.bounds
        
        previousButton = button
        currentViewController = accountViewController
        
    }
    
    @IBAction func onTrendingButton(button: UIButton) {
        
        if currentViewController != nil {
            currentViewController.willMoveToParentViewController(nil)
            currentViewController.view.removeFromSuperview()
            currentViewController.removeFromParentViewController()
        }
        
        if previousButton != nil {
            previousButton.selected = false
        }
        
        button.selected = true
        contentView.addSubview(trendingViewController.view)
        trendingViewController.view.frame = contentView.bounds
        
        previousButton = button
        currentViewController = trendingViewController
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

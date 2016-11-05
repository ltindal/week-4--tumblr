//
//  HomeViewController.swift
//  week 4- tumblr
//
//  Created by Lauren Tindal on 11/5/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //outlet for content view
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    var realHomeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        realHomeViewController = storyboard.instantiateViewController(withIdentifier: "RealhomeView")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchView")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountView")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingView")
        
        viewControllers = [realHomeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
        
        
    }



}

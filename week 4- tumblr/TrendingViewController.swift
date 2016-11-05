//
//  TrendingViewController.swift
//  week 4- tumblr
//
//  Created by Lauren Tindal on 11/5/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 1217)
        
        // Do any additional setup after loading the view.
    }

    

}

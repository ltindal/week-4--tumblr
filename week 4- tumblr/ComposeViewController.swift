//
//  ComposeViewController.swift
//  week 4- tumblr
//
//  Created by Lauren Tindal on 11/5/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    
    @IBOutlet weak var textButton: UIImageView!
    @IBOutlet weak var photoButton: UIImageView!
    @IBOutlet weak var quoteButton: UIImageView!
    @IBOutlet weak var linkButton: UIImageView!
    @IBOutlet weak var chatButton: UIImageView!
    @IBOutlet weak var videoButton: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        textButton.frame.origin.y = 550
        photoButton.frame.origin.y = 550
        quoteButton.frame.origin.y = 550
        
        linkButton.frame.origin.y = 550
        chatButton.frame.origin.y = 550
        videoButton.frame.origin.y = 550


    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.textButton.frame.origin.y = 160
            }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.photoButton.frame.origin.y = 160
            }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.quoteButton.frame.origin.y = 160
            }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.linkButton.frame.origin.y = 280
            }, completion: nil)

        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.chatButton.frame.origin.y = 280
            }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: [], animations: {
            self.videoButton.frame.origin.y = 280
            }, completion: nil)
        
    }
    
    
    @IBAction func didPressNVM(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    
    


}

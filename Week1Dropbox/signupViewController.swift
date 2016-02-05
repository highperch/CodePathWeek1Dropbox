//
//  signupViewController.swift
//  Week1Dropbox
//
//  Created by Justin Peng on 2/3/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import Cocoa

class signupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.UserInteractionEnabled = true;
        UITapGestureRecognizer (target: self, action: performSegueWithIdentifier("signinSegue", sender: self))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
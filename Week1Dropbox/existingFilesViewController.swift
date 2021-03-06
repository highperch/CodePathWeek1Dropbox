//
//  existingFilesViewController.swift
//  Week1Dropbox
//
//  Created by Justin Peng on 2/4/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import UIKit

class existingFilesViewController: UIViewController {
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func onSelect(sender: UIButton) {
        if sender.selected == false {
            sender.selected = true
            defaults.setBool(true, forKey: "favorited_files");
            defaults.synchronize()
        } else {
            sender.selected = false
            defaults.setBool(false, forKey: "favorited_files");
            defaults.synchronize()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

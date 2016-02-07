//
//  existingFavoritesViewController.swift
//  Week1Dropbox
//
//  Created by Justin Peng on 2/6/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import UIKit

class existingFavoritesViewController: UIViewController {
    
    @IBOutlet weak var favorites_status: UIImageView!

    var defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false)
        if defaults.boolForKey("favorited_files") == true {
            favorites_status.image = UIImage(named:"favorited")
        }
        else {
            favorites_status.image = UIImage(named:"empty_favorites")
        }
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

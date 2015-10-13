//
//  AccountViewController.swift
//  Project 4
//
//  Created by Chris Mikelson on 10/11/15.
//  Copyright © 2015 Chris Mikelson. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var searchTooltip: UIImageView!
    @IBOutlet weak var accountScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        accountScrollView.contentSize = CGSize(width: 320, height: 568)
    }
    
    override func viewDidAppear(animated: Bool) {
        searchTooltip.alpha = 1
        UIView.animateWithDuration(1.0, delay: 0.5, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.searchTooltip.center.y += 5
            self.searchTooltip.center.y -= 5
            }) { (completed) -> Void in
                print("hover completed")
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

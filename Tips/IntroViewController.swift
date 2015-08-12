//
//  IntroViewController.swift
//  Tips
//
//  Created by Michael Friedman on 8/11/15.
//  Copyright (c) 2015 Michael Friedman. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    var tipSize : NSString!
    
    @IBOutlet weak var wentSmallButton: UIButton!
    @IBOutlet weak var wentMediumButton: UIButton!
    @IBOutlet weak var wentBigButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.backgroundColor = UIColor.redColor();
    }
    
    @IBAction func onButtonTap(sender: UIButton) {
        if (sender == wentSmallButton) {
            tipSize = "small";
            println("went small");
        }
        else if (sender == wentMediumButton) {
            tipSize = "medium";
            println("went medium");
        }
        else if (sender == wentBigButton) {
            tipSize = "big";
            println("went big");
        }
        self.performSegueWithIdentifier("tipViewControllerSegue", sender: sender);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "tipViewControllerSegue") {
            var nextViewController = (segue.destinationViewController as! ViewController)
            nextViewController.tipSize = self.tipSize;
        }
    }
}



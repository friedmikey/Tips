//
//  IntroViewController.swift
//  Tips
//
//  Created by Michael Friedman on 8/11/15.
//  Copyright (c) 2015 Michael Friedman. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    var partySize : Double = 0.0
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        //self.view.backgroundColor = UIColor.redColor();
    }
    
    @IBAction func onButtonTap(sender: UIButton) {
        if (sender == oneButton) {
            partySize = 1;
            println("party size is 1");
        }
        else if (sender == twoButton) {
            partySize = 2;
            println("party size is 2");
        }
        else if (sender == threeButton) {
            partySize = 3;
            println("party size is 3");
        }
        else if (sender == fourButton) {
            partySize = 4;
            println("party size is 4");
        }
        else if (sender == fiveButton) {
            partySize = 5;
            println("party size is 5");
        }
        else if (sender == sixButton) {
            partySize = 6;
            println("party size is 6");
        }
        self.performSegueWithIdentifier("tipViewControllerSegue", sender: sender);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "tipViewControllerSegue") {
            var nextViewController = (segue.destinationViewController as! ViewController)
            nextViewController.partySize = self.partySize;
        }
    }
}



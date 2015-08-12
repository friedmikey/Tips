//
//  IntroViewController.swift
//  Tips
//
//  Created by Michael Friedman on 8/11/15.
//  Copyright (c) 2015 Michael Friedman. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    @IBOutlet weak var wentSmallButton: UIButton!
    @IBOutlet weak var wentMediumButton: UIButton!
    @IBOutlet weak var wentBigButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.backgroundColor = UIColor.redColor();
    }
    
    @IBAction func onButtonTap(sender: UIButton) {
        if (sender == wentSmallButton) {
            println("went small");
        }
        else if (sender == wentMediumButton) {
            println("went medium");
        }
        else if (sender == wentBigButton) {
            println("went big");
        }
    }
}



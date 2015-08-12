//
//  ViewController.swift
//  Tips
//
//  Created by Michael Friedman on 8/8/15.
//  Copyright (c) 2015 Michael Friedman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tipSize : NSString!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (self.tipSize == "small") {
            tipLabel.text = "$1.00";
        }
        else if (self.tipSize == "medium") {
            tipLabel.text = "$5.00";
        }
        else if (self.tipSize == "big") {
            tipLabel.text = "$10.00";
        }
        totalLabel.text = "$0.00"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func onCloseButtonTap(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}


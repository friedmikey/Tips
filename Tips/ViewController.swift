//
//  ViewController.swift
//  Tips
//
//  Created by Michael Friedman on 8/8/15.
//  Copyright (c) 2015 Michael Friedman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var partySize : Double = 0.0
    var tipMultiplier : Double = 0.0
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var youTab: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var themTab: UILabel!
    @IBOutlet weak var themTipLabel: UILabel!
    @IBOutlet weak var themTotalLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var walletControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var tipMultiplier = Double(walletControl.value)
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage * tipMultiplier
        var total = billAmount + tip
        var thembBillAmount = NSString(string: billField.text).doubleValue - billAmount
        
        // billField.text = String(format: "$%.2f", billAmount)
        //figure out why number formatting isn't working right here
        
       // youTab.text = String(format: "$%.2f", tip)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",total)
        println("Multiplier: \(tipMultiplier)")
    
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func onCloseButtonTap(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    
}


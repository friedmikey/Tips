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
    @IBOutlet weak var youTabLabel: UILabel!
    @IBOutlet weak var youTipLabel: UILabel!
    @IBOutlet weak var youTotalLabel: UILabel!
    @IBOutlet weak var themTabLabel: UILabel!
    @IBOutlet weak var themTipLabel: UILabel!
    @IBOutlet weak var themTotalLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var walletControl: UISlider!
    @IBOutlet weak var partySizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var billAmount = NSString(string: billField.text).doubleValue
        var youTab = NSString(string: billField.text).doubleValue / partySize
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var tipMultiplier = Double(walletControl.value)
        var youTip = youTab * tipPercentage * tipMultiplier
        var youTotal = youTip + youTab
        var themTip : Double = 0.0
        var themTab : Double = 0.0
        if (partySize == 1) {
            themTip = 0;
            themTab = 0;
        }
        else {
            themTip = ((billAmount * tipPercentage) - youTip) / (partySize - 1);
            themTab = youTab
        }
        var themTotal = themTab + themTip
        
        
//        var tip = billAmount * tipPercentage * tipMultiplier
//        var total = billAmount + tip
//        var thembBillAmount = NSString(string: billField.text).doubleValue - billAmount
        
//         billField.text = String(format: "$%.2f", billAmount)
//        figure out why number formatting isn't working right here
        
        youTabLabel.text = String(format: "$%.2f", youTab)
        youTipLabel.text = String(format: "$%.2f", youTip)
        youTotalLabel.text = String(format: "$%.2f", youTotal)
        themTabLabel.text = String(format: "$%.2f", themTab)
        themTipLabel.text = String(format: "$%.2f", themTip)
        themTotalLabel.text = String(format: "$%.2f", themTotal)
        partySizeLabel.text = "x \(partySize)"
        println("Multiplier: \(tipMultiplier)")
    
    }

    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func onCloseButtonTap(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    
}


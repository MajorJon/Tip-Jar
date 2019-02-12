//
//  ViewController.swift
//  Tip Jar
//
//  Created by user150601 on 2/10/19.
//  Copyright © 2019 jtmajor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipTotalView: UIView!
    @IBOutlet weak var billField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //calculate bill
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentage = [0.15, 0.20, 0.25]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


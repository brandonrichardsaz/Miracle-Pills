//
//  ViewController.swift
//  MiraclePill
//
//  Created by Richards, Brandon S. on 4/9/17.
//  Copyright © 2017 Richards, Brandon S. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var zipTextField: UITextField!
    
    @IBOutlet weak var buynowButton: UIButton!
    
    
    @IBOutlet weak var zipLabel: UILabel!
    let states = ["Alaska", "Arizona", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(sender: AnyObject) {
        statePicker.hidden = false
        countryLabel.hidden = true
        countryTextField.hidden = true
        zipLabel.hidden = true
        zipTextField.hidden = true //ddfd
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], forState: UIControlState.Normal)
        statePicker.hidden = true
        countryLabel.hidden = false
        countryTextField.hidden = false
        zipLabel.hidden = false
        zipTextField.hidden = false
    }
    
    @IBAction func buynowButtonPressed(sender: AnyObject) {
    }
    
}


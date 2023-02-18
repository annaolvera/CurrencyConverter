//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user231253 on 2/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var eSwitch: UISwitch! //Euro
    @IBOutlet weak var mSwitch: UISwitch! //Mex
    @IBOutlet weak var gSwitch: UISwitch! //Eng
    @IBOutlet weak var cSwitch: UISwitch! //Can
    
    //Define the currency exchange rate as a constant
    let euroRate: Double = 0.82
    let mxnRate: Double = 20.29
    let gbpRate: Double = 0.71
    let canRate: Double = 1.26
    
    
    //Boolean Value for Switchers
    var euroSwitch = true
    var mxnSwitch = true
    var gbpSwitch = true
    var cadSwitch = true
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func EuroSlider(_ sender: UISwitch) {
        if sender.isOn {
            euroSwitch = true
        } else {
            euroSwitch = false
        }
    }
    
    @IBAction func MXNSlider(_ sender: UISwitch) {
        if sender.isOn {
            mxnSwitch = true
        } else {
            mxnSwitch = false
        }
        
    }
    
    
    @IBAction func GBPSlider(_ sender: UISwitch) {
        if sender.isOn {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
        
    }
    
    
    @IBAction func CADSlider(_ sender: UISwitch) {
        if sender.isOn {
            cadSwitch = true
        } else {
            cadSwitch = false
        }
        
    }
    
    
    @IBAction func converButton(_ sender: UIButton) {
        
        guard let text = textField.text, let usdValue = Double(text) else {
            return
        }
        
        var resultMessage = ""
        
        // Check if the switch is on for the selected currency
        if eSwitch.isOn {
            let euroValue = usdValue * euroRate
            resultMessage += "EUR: \(euroValue)\n"
        }
        if mSwitch.isOn {
            let mxnValue = usdValue * mxnRate
            resultMessage += "MXN: \(mxnValue)\n"
        }
        if gSwitch.isOn {
            let gbpValue = usdValue * gbpRate
            resultMessage += "GBP: \(gbpValue)\n"
        }
        if cSwitch.isOn {
            let cadValue = usdValue * canRate
            resultMessage += "CAD: \(cadValue)\n"
        }
        
        let alert = UIAlertController(title: "Conversion Result", message: resultMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    }
    
    


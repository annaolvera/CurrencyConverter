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
    
    var converterLogic = ConverterLogic()
    var amount = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func EuroSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
    }
    
    @IBAction func MXNSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
        
    }
    
    @IBAction func GBPSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
        
    }
    
    @IBAction func CADSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
        
    }
    
    
    @IBAction func converButton(_ sender: UIButton) {
        let amount = Double(textField.text ?? "0") ?? 0.0
        let result = converterLogic.convertAmount(amount)
        
        let alert = UIAlertController(title: "Conversion Result", message: result, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)

        self.amount = result
        self.performSegue(withIdentifier: "toConverterView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverterView" {
            let navigation = segue.destination as! ConverterView
            navigation.amount = amount
        }
    }
    
}

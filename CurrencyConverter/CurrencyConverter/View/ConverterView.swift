//
//  ConverterView.swift
//  CurrencyConverter
//
//  Created by user231253 on 2/18/23.
//

import UIKit

class ConverterView: UIViewController {
    
    
    @IBOutlet weak var USDAmountLabel: UILabel!
    @IBOutlet weak var EURAmountLabel: UILabel!
    @IBOutlet weak var MXNAmountLabel: UILabel!
    @IBOutlet weak var GBPAmountLabel: UILabel!
    @IBOutlet weak var CADAmountLabel: UILabel!
    var amount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            EURAmountLabel.text = "€ \(amount)"
        
    }
    
        
       

            
    
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

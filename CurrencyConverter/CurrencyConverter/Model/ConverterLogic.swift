//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by user231253 on 2/18/23.
//

import Foundation

struct ConverterLogic {
    //Define the currency exchange rate
    var euroRate: Double = 0.82
    var mxnRate: Double = 20.29
    var gbpRate: Double = 0.71
    var canRate: Double = 1.26
    
    
    //Boolean Value for Switchers
    var euroSwitch = true
    var mxnSwitch = true
    var gbpSwitch = true
    var cadSwitch = true
    
    //USD amount to be converted
    var amount: Double = 0
    
    
    //Method to set the ON/OFF Value for Switch
    mutating func setSwitch(_ switchValue: Bool){
        if switchValue {
            euroSwitch = true
            mxnSwitch = true
            gbpSwitch = true
            cadSwitch = true
            
        } else {
            euroSwitch = false
            mxnSwitch = false
            gbpSwitch = false
            cadSwitch = false
            
        }
                
        
    }
    
    //Method to Convert USD to EURO
    mutating func getEuroConversion(_ amount: Double) -> Double {
        let euroValue = Double(amount * euroRate)
        return euroValue
    }
    
    //Method to Convert USD to MXN
    mutating func getMxnConversion(_ amount: Double) -> Double {
        let mxnValue = Double(amount * mxnRate)
        return mxnValue
    }
    
    //Method to Convert USD to GBP
    mutating func getGbpConversion(_ amount: Double) -> Double {
        let gbpValue = Double(amount * gbpRate)
        return gbpValue
    }
    
    //Method to Convert USD to CAD
    mutating func getCadConversion(_ amount: Double) -> Double {
        let canValue = Double(amount * canRate)
        return canValue
    }
    
    mutating func convertAmount(_ amount: Double) -> String {
        //Value of self.amount
       // self.amount = amount
        var conversionResults = ""
        if euroSwitch {
            let euroValue = getEuroConversion(amount)
            conversionResults += "EUR: \(euroValue)\n"
        }
        if mxnSwitch {
            let mxnValue = getMxnConversion(amount)
            conversionResults += "MXN: \(mxnValue)\n"
        }
        if gbpSwitch {
            let gbpValue = getGbpConversion(amount)
            conversionResults += "GBP: \(gbpValue)\n"
        }
        if cadSwitch {
            let cadValue = getCadConversion(amount)
            conversionResults += "CAD: \(cadValue)\n"
        } else {
            conversionResults = "NOT VALID"
        }
        return conversionResults
        
    }
    
}

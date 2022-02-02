//
//  Keyur_Calculator_Model.swift
//  Keyur_Panchal_Orange_Calculator
//
//  Created by Keyur Panchal on 2022-02-01.
//

import Foundation

class Keyur_Calculator_Model {
    var firstNumber: Double?
    var secondNumber: Double?
    var operation: String?
    
    func updateNumber(newNumber: Double){
        if (firstNumber == nil){
            firstNumber = newNumber
        } else if (operation == nil){
            firstNumber = newNumber
        } else {
            secondNumber = newNumber
        }
    }
    
    func getResult() -> Double {
        var result: Double
        switch (operation) {
        case "+":
            result = firstNumber! + secondNumber!
        case "-":
            result = firstNumber! - secondNumber!
        case "*":
            result = firstNumber! * secondNumber!
        case "/":
            result = firstNumber! / secondNumber!
            
        default:
            result = 0.0
        }
        
        return result
    }
    
    func reset() {
        firstNumber = nil
        secondNumber = nil
        operation = nil
    }
}

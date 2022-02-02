//
//  ViewController.swift
//  Keyur_Panchal_Orange_Calculator
//
//  Created by Keyur Panchal on 2022-01-31.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var numberDisplay: UILabel!
    
    //MARK: - Other Veriables
    
    var calcultorModel = Keyur_Calculator_Model()
    var startNewNumber = true
    
    
    //MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        print("Button Touched")
        
        let buttonText = sender.titleLabel?.text
        print(buttonText!)
        
        var currentValue = numberDisplay.text!
        
        switch (buttonText!) {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            print(buttonText!)
            if(startNewNumber) {
                currentValue = buttonText!
            }else{
                currentValue = currentValue + buttonText!
            }
            
            startNewNumber = false
            calcultorModel.updateNumber(newNumber: Double(currentValue)!)
            //do something
            
        case "+":
            calcultorModel.operation = buttonText
            startNewNumber = true
            //accept second number after this
        case "-":
            calcultorModel.operation = buttonText
            startNewNumber = true
        case "*":
            calcultorModel.operation = buttonText
            startNewNumber = true
        case "/":
            calcultorModel.operation = buttonText
            startNewNumber = true
                
        case "=":
            if (calcultorModel.secondNumber == nil) {
                calcultorModel.updateNumber(newNumber: Double(currentValue)!)
            }
            currentValue = String(calcultorModel.getResult())
            startNewNumber = true
            // get result and display result it on display panel
            
        default:
            print(buttonText!)
            //do something default
        }
        
        numberDisplay.text = currentValue
    }
    


}


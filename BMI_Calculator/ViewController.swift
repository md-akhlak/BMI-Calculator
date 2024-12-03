//
//  ViewController.swift
//  Assisment_1
//
//  Created by Batch - 1 on 19/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.layer.borderWidth = 2.0
    }
    
    
    @IBAction func checkButton(_ sender: Any) {
        
        let weight = Float(weightTextField.text!)
        let height = Float(heightTextField.text!)
        
        let bmi = weight!/pow(height!,2)
        let formattedBMI = String(format: "%.2f", bmi)
        
        switch bmi{
        case ...18.5:
            outputLabel.text! = "Underweight \(formattedBMI)"
        case  18.5...24.9:
            outputLabel.text! = "Normalweight \(formattedBMI)"
        case 25.0...29.9:
            outputLabel.text! = "Overweight \(formattedBMI)"
        default:
            outputLabel.text! = "Obese \(formattedBMI)"
        }
        
    }
    
    @IBAction func clearButton(_ sender: Any) {
        weightTextField.text! = ""
        heightTextField.text! = ""
        outputLabel.text! = ""
    }
    
}


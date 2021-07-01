//
//  ViewController.swift
//  Calculator_Test
//
//  Created by Veranika Razdabudzka on 30.06.21.
//

import UIKit

class ViewController: UIViewController {

    var firstNumber: Double = 0
    var secondNumber: Double = 0
    
    var match: Bool = false
    var operation: Int = 0
    
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if match == true {
            resultLbl.text = String(sender.tag)
            match = false
        }else {
            resultLbl.text = resultLbl.text! + String(sender.tag)
        }
        secondNumber = Double(resultLbl.text!)!
    }
    
    @IBAction func operations(_ sender: UIButton) {
        
        if resultLbl.text != "" && sender.tag != 10 && sender.tag != 16 {
            firstNumber = Double(resultLbl.text!)!
            switch sender.tag {
            case 11:
                resultLbl.text = "^"
            case 12:
                resultLbl.text = "/"
            case 13:
                resultLbl.text = "*"
            case 14:
                resultLbl.text = "-"
            case 15:
                resultLbl.text = "+"
            default:
                break
            }
            operation = sender.tag
            match = true
        }
        
        else if sender.tag == 16 {
            if operation == 11 {
                resultLbl.text = String(pow(firstNumber, secondNumber))
            }
            else if operation == 12 {
                resultLbl.text = String(firstNumber / secondNumber)
            }
            else if operation == 13 {
                resultLbl.text = String(firstNumber * secondNumber)
            }
            else if operation == 14 {
                resultLbl.text = String(firstNumber - secondNumber)
            }
            else if operation == 15 {
                resultLbl.text = String(firstNumber + secondNumber)
            }
        }
        
        else if sender.tag == 10 {
            resultLbl.text = ""
            firstNumber = 0
            secondNumber = 0
            operation = 0
        }
    }
}


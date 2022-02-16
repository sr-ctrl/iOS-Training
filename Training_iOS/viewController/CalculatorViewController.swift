//
//  CalculatorViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 10/02/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var ResultTextField: UITextField!
    
    @IBOutlet weak var btClear: UIButton!
    
    //digits
    @IBOutlet weak var btPoint: UIButton!
    @IBOutlet weak var btZero: UIButton!
    @IBOutlet weak var btOne: UIButton!
    @IBOutlet weak var btTwo: UIButton!
    @IBOutlet weak var btThree: UIButton!
    @IBOutlet weak var btFour: UIButton!
    @IBOutlet weak var btFive: UIButton!
    @IBOutlet weak var btSix: UIButton!
    @IBOutlet weak var btSeven: UIButton!
    @IBOutlet weak var btEight: UIButton!
    @IBOutlet weak var btNine: UIButton!
    //oprator
    @IBOutlet weak var equalsTo: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    
    @IBOutlet weak var btnDevide: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    
    @IBOutlet weak var btnModulus: UIButton!
    var numberOne = 0.0
    var numberTwo = 0.0
    var resultNumber = 0.0
    var oprator = ""
    var isClear = false
    
    @IBOutlet weak var HStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        loadButtons()
        // Do any additional setup after loading the view.
        
    }
//    
    @IBAction func themeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            loadButtons()
    }
}
    func loadButtons(){
        roundCirecle(view: btOne)
        roundCirecle(view: btTwo)
        roundCirecle(view: btThree)
        roundCirecle(view: btFour)
        roundCirecle(view: btFive)
        roundCirecle(view: btSix)
        roundCirecle(view: btSeven)
        roundCirecle(view: btEight)
        roundCirecle(view: btNine)
        roundCirecle(view: btPoint)
        roundCirecle(view: equalsTo)
        roundCirecle(view: btnPlus)
        roundCirecle(view: btnMinus)
        roundCirecle(view: btnMultiply)
        roundCirecle(view: btnDevide)
        roundCirecle(view: btnModulus)
        primaryButton(button: btZero)
        primaryButton(button: btClear)
    }

    
   
    @IBAction func DigitButtons(_ sender: UIButton){
        if (isClear == true) {
        clearText()
        isClear = false
    }
        switch sender{
        case btClear:
                
                numberOne = 0.0
                numberTwo = 0.0
                resultNumber = 0.0
                clearText()
        case btPoint:
            ResultTextField.text = (ResultTextField?.text)! + "."
        case btOne:
            
            ResultTextField.text = (ResultTextField?.text)! + "1"
        case btTwo:
            ResultTextField.text = (ResultTextField?.text)! + "2"
        case btThree:
            ResultTextField.text = (ResultTextField?.text)! + "3"
        case btFour:
            ResultTextField.text = (ResultTextField?.text)! + "4"
        case btFive:
            ResultTextField.text = (ResultTextField?.text)! + "5"
        case btSix:
            ResultTextField.text = (ResultTextField?.text)! + "6"
        case btSeven:
            ResultTextField.text = (ResultTextField?.text)! + "7"
        case btEight:
            ResultTextField.text = (ResultTextField?.text)! + "8"
        case btNine:
            ResultTextField.text = (ResultTextField?.text)! + "9"
        case btZero:
            ResultTextField.text = (ResultTextField?.text)! + "0"
        case btnPlus:
            oprator = "+"
            numberOne = Double((ResultTextField?.text)!)!
            clearText()
        case btnMinus:
            oprator = "-"
            numberOne = Double((ResultTextField?.text)!)!
            clearText()
        case btnMultiply:
            oprator = "*"
            numberOne = Double((ResultTextField?.text)!)!
            clearText()
        case btnDevide:
            oprator = "/"
            numberOne = Double((ResultTextField?.text)!)!
            clearText()
        case equalsTo:
            isClear = true
            numberTwo = Double((ResultTextField?.text)!)!
            print("\(numberOne) + \(numberTwo)")
            switch oprator {
            case "+":
                resultNumber = numberOne + numberTwo
                ResultTextField.text = "\(resultNumber)"
                
            case "-":
                resultNumber = numberOne - numberTwo
//                ResultTextField.text = "\(resultNumber.rounded())"
                ResultTextField.text = "\(resultNumber)"
            case "*":
                resultNumber = numberOne * numberTwo
                ResultTextField.text = "\(resultNumber)"
            case "/":
                resultNumber = numberOne / numberTwo
                ResultTextField.text = "\(resultNumber)"
            default:
                return
            }
        default:
                return
        }
    }
    
    private func clearText(){
        ResultTextField.text = ""
    }
}




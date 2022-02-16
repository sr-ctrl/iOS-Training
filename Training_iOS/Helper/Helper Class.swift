//
//  Helper Class.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 03/02/22.
//

import Foundation
import UIKit

func roundCirecle(view:UIView){
    view.layer.cornerRadius = view.frame.width / 2
    view.layer.masksToBounds  = true
}

func primaryButton(button:UIButton){
    button.layer.cornerRadius = button.frame.height / 2
    button.layer.masksToBounds = true
}

func InputTextField (txtField:UITextField, borderColor:CGColor){
    txtField.layer.borderColor = borderColor
    txtField.layer.borderWidth = 2.0
    txtField.layer.cornerRadius = 4
    txtField.layer.masksToBounds = true
}
//email validation
func isValidEmail(email:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}
//password validation
public func isValidPassword(password:String) -> Bool {
//    let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
    let passwordRegEx = "[0-9a-zA-Z]{8,}"
    return NSPredicate(format: "SELF MATCHES %@", passwordRegEx).evaluate(with: password)
}

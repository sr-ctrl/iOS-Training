//
//  LoginViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 03/02/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var login_btn: UIButton!
    @IBOutlet weak var email_txt: UITextField!
    @IBOutlet weak var password_txt: UITextField!
    
    
    @IBOutlet weak var error_label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoad()
        primaryButton(button: login_btn)
        email_txt.becomeFirstResponder()
    }
    
    func setupLoad(){
        email_txt.delegate  = self
        password_txt.delegate = self
        email_txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
        password_txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
    }
    
    @IBAction func login_btn_OnClick(_ sender: UIButton) {
        print("login btn clicked")
        if(emailValidation() == true && passwordValidtion() == true){
            print("validate")
            error_label.isHidden = true
            toHomePage()
        }else{
            error_label.isHidden = false
            error_label.text = "Email or Password is invalid re-enter"
            print("not valid")
        }
    }
    
    func toHomePage(){
        self.performSegue(withIdentifier: "HomePageViewController", sender: nil)
        print("performing segue")
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "HomePageViewController"{
//            let homePageController = segue.destination as? HomePageViewController
//            homePageController?.Pagetitle = "Home Page"
//        }
//    }



        
    //email password validation
       
        func emailValidation() -> Bool{
            //email validation
        if isValidEmail(email: email_txt.text ?? ""){
                InputTextField(txtField: email_txt, borderColor: UIColor.black.cgColor)
                print("email is valid")
            return true
        }else{
            InputTextField(txtField: email_txt, borderColor: UIColor.red.cgColor)
            return false
        }
    }
        //password validation
        func passwordValidtion() -> Bool{
            if isValidPassword(password: password_txt.text ?? ""){
                    InputTextField(txtField: password_txt, borderColor: UIColor.black.cgColor)
                    print("password is valid")
                return true
                
            }else{
                    InputTextField(txtField: password_txt, borderColor: UIColor.red.cgColor)
                  
                return false
                }
        }
    }
        


extension LoginViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2.0
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == email_txt {
            password_txt.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}
            



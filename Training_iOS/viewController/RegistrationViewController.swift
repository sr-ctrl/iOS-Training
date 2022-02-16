//
//  RegistrationViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 03/02/22.
//

import UIKit

class RegistrationViewController: UIViewController {

    let topView: UIView = {
            let view = UIView()
            view.backgroundColor = .orange
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    let emailTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.placeholder = "Email"
            tf.borderStyle = .roundedRect
            tf.backgroundColor = UIColor(white: 0, alpha: 0.1)
            return tf
            
        }()
        
        let usernameTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.placeholder = "Username"
            tf.borderStyle = .roundedRect
            tf.backgroundColor = UIColor(white: 0, alpha: 0.1)
            return tf
            
        }()
        
        let passwordTextField: UITextField = {
            let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.placeholder = "Password"
            tf.isSecureTextEntry = true
            tf.borderStyle = .roundedRect
            tf.backgroundColor = UIColor(white: 0, alpha: 0.1)
            return tf
            
        }()
        
        let signUpButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Sign Up", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 3
            button.backgroundColor = UIColor.lightGray
            return button
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
                
                setupTopView()
        setupTextFields()
        // Do any additional setup after loading the view.
    }
    
    func setupTextFields() {
            
            let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signUpButton])
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            //add stack view as subview to main view with AutoLayout
            view.addSubview(stackView)
            stackView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 40).isActive = true
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
            stackView.heightAnchor.constraint(equalToConstant: 200).isActive = true
            
        }
   
    
    func setupTopView() {
            view.addSubview(topView)
            topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            topView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            topView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            topView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        }

}

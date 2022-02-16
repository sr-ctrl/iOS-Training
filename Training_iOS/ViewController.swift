//
//  ViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 01/02/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Circle_button: UIButton!
    @IBOutlet weak var Test_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        roundCirecle(view: Test_button)
        roundCirecle(view: Circle_button)
      
        
    }


}


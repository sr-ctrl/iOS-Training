//
//  ContactDetailViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 06/02/22.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var numberContact: UILabel!
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var imageContact: UIImageView!
    
    var image:UIImage!
    var name:String!
    var number:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageContact.image = image
        numberContact.text = number
        nameContact.text = name
    }
    


}

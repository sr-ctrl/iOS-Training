//
//  ContactDetails.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 05/02/22.
//

import Foundation
import UIKit

class ContactDetails{
    var Name:String
    var Number:Int64
    var ContactImage:UIImage
    
    init(cName:String, cNumber:Int64, cImage:UIImage){
        Name = cName
        Number = cNumber
        ContactImage = cImage
    }
}

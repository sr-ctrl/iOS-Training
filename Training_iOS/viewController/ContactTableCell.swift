//
//  ContactTableCell.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 06/02/22.
//

import UIKit

class ContactTableCell: UITableViewCell {

    @IBOutlet weak var ContactImage: UIImageView!
    @IBOutlet weak var ContactName: UILabel!
    @IBOutlet weak var ContactNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

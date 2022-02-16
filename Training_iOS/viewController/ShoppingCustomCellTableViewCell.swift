//
//  ShoppingCustomCellTableViewCell.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 09/02/22.
//

import UIKit

class ShoppingCustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var itemCount: UILabel!
    @IBOutlet weak var itemRating: UILabel!
    @IBOutlet weak var ItemDescript: UILabel!
    @IBOutlet weak var ItemCategory: UILabel!
    @IBOutlet weak var ItemTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
     func setData(data: AcessoriesModel) {
        ItemTitle.text = data.title
         price.text = "\(String(describing: data.price) )"
        ItemCategory.text = data.category
        ItemDescript.text = data.description
        itemRating.text = "\(data.rating.rate)"
        itemCount.text = "\(data.rating.count)"
    }
    
}

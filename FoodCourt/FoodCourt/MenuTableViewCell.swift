//
//  MenuTableViewCell.swift
//  FoodCourt
//
//  Created by Vinayak Balaji Tuptewar on 30/11/20.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    
    @IBOutlet var imageCell: UIImageView!
    
    @IBOutlet var lblCell: UILabel!
    var label = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

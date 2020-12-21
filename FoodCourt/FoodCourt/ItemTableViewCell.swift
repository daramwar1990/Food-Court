//
//  ItemTableViewCell.swift
//  FoodCourt
//
//  Created by Vinayak Balaji Tuptewar on 01/12/20.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    

    @IBOutlet weak var itemlabel2: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

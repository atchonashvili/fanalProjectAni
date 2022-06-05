//
//  TableViewCell.swift
//  finalProjectAni
//
//  Created by apple on 6/6/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageProducts: UIImageView!
    
    @IBOutlet weak var productsLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var stockLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  TableViewCell.swift
//  CarSpotter
//
//  Created by Aaron on 03/08/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var CellMake: UILabel!
    @IBOutlet weak var CellModel: UILabel!
    @IBOutlet weak var CellYear: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  TodoTableViewCell.swift
//  TPProgMob
//
//  Created by “ios” on 03/12/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
   
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

//
//  CatTableViewCell.swift
//  TPProgMob
//
//  Created by “ios” on 15/12/2021.
//

import UIKit

class CatTableViewCell: UITableViewCell {

    @IBOutlet weak var cat: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

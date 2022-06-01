//
//  MenuTableViewCell.swift
//  
//
//  Created by Shubham meher on 20/05/22.
//

import UIKit

class MenuTableViewCell1: UITableViewCell {

       
    @IBOutlet weak var MenuIconImages: UIImageView!
    @IBOutlet weak var MenuIconsNames: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        print("hi")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

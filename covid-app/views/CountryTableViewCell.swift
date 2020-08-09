//
//  CountryTableViewCell.swift
//  covid-app
//
//  Created by Sanviraj Zahin Haque on 9/8/20.
//  Copyright © 2020 Sanviraj Zahin Haque. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var CountryNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

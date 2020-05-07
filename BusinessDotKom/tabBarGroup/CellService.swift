//
//  CellService.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/10/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class CellService: UITableViewCell {

        @IBOutlet weak var lblService: UILabel!
        @IBOutlet weak var lbl1: UILabel!
        @IBOutlet weak var lbl2: UILabel!
        @IBOutlet weak var lbl3: UILabel!
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
            lblService.layer.cornerRadius = 25
            lbl1.layer.cornerRadius = 20
            lbl1.layer.masksToBounds = true
            lbl2.layer.cornerRadius = 20
            lbl2.layer.masksToBounds = true
            lbl3.layer.cornerRadius = 20
            lbl3.layer.masksToBounds = true
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }

    }

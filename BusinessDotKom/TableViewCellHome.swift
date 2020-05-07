//
//  TableViewCellHome.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/19/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class TableViewCellHome: UITableViewCell {

    @IBOutlet weak var btnSellAll: UIButton!
    @IBOutlet weak var lblHotOffers: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

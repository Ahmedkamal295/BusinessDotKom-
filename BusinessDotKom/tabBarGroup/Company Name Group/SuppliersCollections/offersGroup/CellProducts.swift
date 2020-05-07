//
//  CellProducts.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/5/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class CellProducts: UICollectionViewCell {
    var isActive:Bool = false
    @IBOutlet weak var imgSale: UIButton!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblStoreName: UILabel!
    @IBOutlet weak var btnFavorite: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func btnFavorite(_ sender: UIButton) {
        if isActive {
            isActive = false
            btnFavorite.setImage(UIImage(named: "favouritenone"), for: .normal)
        }else{
            sender.pulsate()
            isActive = true
            btnFavorite.setImage(UIImage(named: "favourite"), for: .normal)
        }
        
    }
}

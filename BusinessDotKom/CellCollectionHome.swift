//
//  CellCollectionHome.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/24/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class CellCollectionHome: UICollectionViewCell {
    
    var isActive:Bool = false
    @IBOutlet weak var sale: UIButton!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var contanctBtn: UIButton!
    @IBOutlet weak var favoriteBtn: UIButton!
    
    @IBAction func favoriteBtn(_ sender: UIButton) {
        if isActive {
            isActive = false
            favoriteBtn.setImage(UIImage(named: "favouritenone"), for: .normal)
        }else{
            sender.pulsate()
            isActive = true
            favoriteBtn.setImage(UIImage(named: "favourite"), for: .normal)
        }
        
    }
}

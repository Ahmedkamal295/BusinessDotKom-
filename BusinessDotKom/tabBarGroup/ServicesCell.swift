//
//  ServicesCell.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit
protocol ServicesCellProtocol {
    func goCell(indx: Int)
}
class ServicesCell: UICollectionViewCell {
    
    @IBOutlet weak var btnRate: UIButton!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btnContactCompany: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    
    var delegate: ServicesCellProtocol?
    var index: IndexPath?
    @IBAction func btnContactCompany(_ sender: Any) {
        
         delegate?.goCell(indx: (index?.row)!)
    }
}

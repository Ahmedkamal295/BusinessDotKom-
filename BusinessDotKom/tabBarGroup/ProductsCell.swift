//
//  ProductsCell.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/1/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit
protocol ProductsCellProtocol {
    func deleteCell(indx: Int)
}
class ProductsCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var btnEdite: UIButton!
    @IBOutlet weak var btnDelete: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        btnEdite.layer.cornerRadius = btnEdite.frame.size.width / 2
        btnEdite.clipsToBounds  = true
        //
        btnDelete.layer.cornerRadius = btnDelete.frame.size.width / 2
        btnDelete.clipsToBounds  = true

    }
    var delegate: ProductsCellProtocol?
    var index: IndexPath?
    
    
    @IBAction func btnEdite(_ sender: Any) {
    }
    @IBAction func btnDelete(_ sender: Any) {
        delegate?.deleteCell(indx: (index?.row)!)
    }
}

//
//  MyRequestsCell.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/1/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit
protocol MyRequestsCellProtocol {
    func deleteCell(indx: Int)
}
class MyRequestsCell: UITableViewCell {

    
    var isActive:Bool = false
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var descriptionlbl: UILabel!
    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var btnEdite: UIButton!
    @IBOutlet weak var btnDelete: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        imgUser.layer.cornerRadius = imgUser.frame.size.width / 2
        imgUser.clipsToBounds  = true
        //
        btnEdite.layer.cornerRadius = btnEdite.frame.size.width / 2
        btnEdite.clipsToBounds  = true
        //
        btnDelete.layer.cornerRadius = btnDelete.frame.size.width / 2
        btnDelete.clipsToBounds  = true
    }
    
    var delegate: MyRequestsCellProtocol?
    var index: IndexPath?
    
    @IBAction func btnEdite(_ sender: UIButton) {
      
        
    }
    @IBAction func btnDelete(_ sender: UIButton) {
        
        delegate?.deleteCell(indx: (index?.row)!)
    }
    @IBAction func btnShare(_ sender: UIButton) {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

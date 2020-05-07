//
//  RequestsCell.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/31/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit
protocol RequestsCellProtocol {
    func goCell(indx: Int)
}
class RequestsCell: UITableViewCell {

    var isActive:Bool = false
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var descriptionlbl: UILabel!
    @IBOutlet weak var btnContactUser: UIButton!
    @IBOutlet weak var btnFavorite: UIButton!
    @IBOutlet weak var btnShare: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        imgUser.layer.cornerRadius = imgUser.frame.size.width / 2
        imgUser.clipsToBounds  = true
    }

    var delegate: RequestsCellProtocol?
    var index: IndexPath?
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
      @IBAction func btnContactUser(_ sender: UIButton) {
            delegate?.goCell(indx: (index?.row)!)
    }
    @IBAction func btnShare(_ sender: UIButton) {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

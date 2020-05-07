//
//  CustomerVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/24/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class CustomerVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtMessageTitle: UITextField!
    @IBOutlet weak var txtMessageBody: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds  = true
        
        txtFullName.setLeftPaddingPoints(8)
        txtFullName.setRightPaddingPoints(8)
        
        txtMobileNumber.setLeftPaddingPoints(8)
        txtMobileNumber.setRightPaddingPoints(8)
        
        txtMessageTitle.setLeftPaddingPoints(8)
        txtMessageTitle.setRightPaddingPoints(8)
        
        txtMessageBody.setLeftPaddingPoints(8)
        txtMessageBody.setRightPaddingPoints(8)
    }
    

    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsTableViewController") as? SettingsTableViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

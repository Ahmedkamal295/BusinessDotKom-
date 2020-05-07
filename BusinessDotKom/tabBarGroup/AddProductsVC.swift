//
//  AddProductsVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/1/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class AddProductsVC: UIViewController {

     var isActive:Bool = false
    @IBOutlet weak var btnImg1: UIButton!
    @IBOutlet weak var btnImg2: UIButton!
    @IBOutlet weak var btnImg3: UIButton!
    @IBOutlet weak var btnSelected: UIButton!
    
    @IBOutlet weak var txtProductName: UITextField!
    @IBOutlet weak var txtCategory: UITextField!
    @IBOutlet weak var txtCategory2: UITextField!
    @IBOutlet weak var txtCategory3: UITextField!
    @IBOutlet weak var txtZipCode: UITextField!
    @IBOutlet weak var txtStreetNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnImg1.layer.cornerRadius = btnImg1.frame.size.width / 2
        btnImg1.clipsToBounds  = true
        //
        btnImg2.layer.cornerRadius = btnImg2.frame.size.width / 2
        btnImg2.clipsToBounds  = true
        //
        btnImg3.layer.cornerRadius = btnImg3.frame.size.width / 2
        btnImg3.clipsToBounds  = true
    
        txtProductName.setLeftPaddingPoints(8)
        txtProductName.setRightPaddingPoints(8)
        
        txtCategory.setLeftPaddingPoints(8)
        txtCategory.setRightPaddingPoints(8)
        
        txtCategory2.setLeftPaddingPoints(8)
        txtCategory2.setRightPaddingPoints(8)
        
        txtCategory3.setLeftPaddingPoints(8)
        txtCategory3.setRightPaddingPoints(8)
        
        txtZipCode.setLeftPaddingPoints(8)
        txtZipCode.setRightPaddingPoints(8)
        
        txtStreetNo.setLeftPaddingPoints(8)
        txtStreetNo.setRightPaddingPoints(8)
        
    }
    
    @IBAction func btnSelected(_ sender: UIButton) {
        if isActive {
            isActive = false
            btnSelected.setImage(UIImage(named: "select"), for: .normal)
        }else{
          
            isActive = true
            btnSelected.setImage(UIImage(named: "selected"), for: .normal)
        }
        
    }

    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProductsVC") as? ProductsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

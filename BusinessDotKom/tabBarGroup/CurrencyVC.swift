//
//  CurrencyVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class CurrencyVC: UIViewController {

    @IBOutlet weak var btnLE: UIButton!
    @IBOutlet weak var btnUSD: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsTableViewController") as? SettingsTableViewController
               self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnLE(_ sender: Any) {
        
                   btnUSD.isSelected = false
                  
                   btnLE.isSelected = true
            
                  // btnUSD.isSelected = true
         
    }
    
    @IBAction func btnUSD(_ sender: Any) {

         btnLE.isSelected = false
        
         btnUSD.isSelected = true
    }
    
}

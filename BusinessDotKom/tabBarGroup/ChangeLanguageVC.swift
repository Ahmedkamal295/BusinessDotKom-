//
//  ChangeLanguageVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ChangeLanguageVC: UIViewController {
    @IBOutlet weak var btnArabic: UIButton!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var btnTurkish: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnBack(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsTableViewController") as? SettingsTableViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnArabic(_ sender: Any) {
        
                 btnEnglish.isSelected = false
                btnTurkish.isSelected = false
                btnArabic.isSelected = true
    }
    
    @IBAction func btnEnglish(_ sender: Any) {
        btnArabic.isSelected = false
        btnTurkish.isSelected = false
        btnEnglish.isSelected = true
    }
    
    @IBAction func btnTurkish(_ sender: Any) {
              btnArabic.isSelected = false
               btnEnglish.isSelected = false
               btnTurkish.isSelected = true
    }
}

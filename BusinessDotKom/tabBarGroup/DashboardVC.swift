//
//  DashboardVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/1/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        // Do any additional setup after loading the view.
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: false)
//    }
    @IBAction func backbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsTableViewController") as? SettingsTableViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func productBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProductsVC") as? ProductsVC
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @IBAction func requestsBtn(_ sender: Any) {
    }
    @IBAction func followingtBtn(_ sender: Any) {
    }
    @IBAction func favouritesBtn(_ sender: Any) {
    }
    
}

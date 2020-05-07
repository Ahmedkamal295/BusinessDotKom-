//
//  AboutVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/24/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsTableViewController") as? SettingsTableViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

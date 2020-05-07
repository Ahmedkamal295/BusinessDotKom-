//
//  BranchesVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class BranchesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ServicesVC") as? ServicesVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnMainInfo(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MainInfoVC") as? MainInfoVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    
    @IBAction func btnLocation(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LocationVC") as? LocationVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
}

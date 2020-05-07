//
//  MainInfoVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class MainInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ServicesVC") as? ServicesVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnLocation(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LocationVC") as? LocationVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    
    @IBAction func btnBranches(_ sender: Any) {
            let vc = storyboard?.instantiateViewController(withIdentifier: "BranchesVC") as? BranchesVC
            self.navigationController?.pushViewController(vc!, animated: false)
    }
}

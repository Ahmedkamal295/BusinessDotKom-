//
//  SupplierProfileBranchsVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/6/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SupplierProfileBranchsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func contactSupplierBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContactSupplierProfileVC") as? ContactSupplierProfileVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func backbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VisitStoreVC") as? VisitStoreVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnSupplierMainVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SupplierProfileMainVC") as? SupplierProfileMainVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    @IBAction func btnSupplierLocationVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SupplierProfileLocationVC") as? SupplierProfileLocationVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    @IBAction func btnSupplierReviewsVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SupplierProfileReviewsVC") as? SupplierProfileReviewsVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }

}

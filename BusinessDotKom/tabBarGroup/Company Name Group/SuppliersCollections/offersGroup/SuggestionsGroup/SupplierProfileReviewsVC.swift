//
//  SupplierProfileReviewsVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/6/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SupplierProfileReviewsVC: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.layer.masksToBounds = true
        lbl.layer.cornerRadius = 15

        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds  = true

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
    @IBAction func btnSupplierBranchesVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SupplierProfileBranchsVC") as? SupplierProfileBranchsVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }

}

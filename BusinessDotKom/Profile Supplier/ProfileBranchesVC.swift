//
//  ProfileBranchesVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/25/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ProfileBranchesVC: UIViewController {

    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var btnContactBranchOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 30.0
        btnContactBranchOutlet.layer.cornerRadius = 17.5
    }
    
    
    @IBAction func btnMainInfo(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileMainInfoVC") as? ProfileMainInfoVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    
    @IBAction func btnLocation(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileLocationVC") as? ProfileLocationVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    
    @IBAction func btnReviews(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileReviewsVC") as? ProfileReviewsVC
        self.navigationController?.pushViewController(vc!, animated: false)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

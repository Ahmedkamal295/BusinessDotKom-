//
//  ProfileVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/25/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var btnRequestsOutlet: UIButton!
    @IBOutlet weak var btnConnectOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnRequestsOutlet.layer.cornerRadius = 25.0
        
        btnConnectOutlet.layer.cornerRadius = 20.0
    }
    
    @IBAction func btnConnect(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileMainInfoVC") as? ProfileMainInfoVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnMyRequests(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MyRequestsVC") as? MyRequestsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

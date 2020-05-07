//
//  ForgetPasswordVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/15/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ForgetPasswordVC: UIViewController {

    @IBOutlet weak var btnSendCode: UIButton!
    @IBOutlet weak var EmailOrMobile: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnSendCode.layer.cornerRadius = 25.0
        btnSendCode.layer.masksToBounds = true
        
        EmailOrMobile.layer.cornerRadius = 25.0
        EmailOrMobile.layer.masksToBounds = true
        EmailOrMobile.setLeftPaddingPoints(8)
        EmailOrMobile.setRightPaddingPoints(8)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSendCode(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "VerificationVC") as! VerificationVC
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

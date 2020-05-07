//
//  VerificationVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/15/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class VerificationVC: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var btnVerification: UIButton!
    @IBOutlet weak var back: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text1.layer.cornerRadius = text1.frame.size.width / 2
        text1.clipsToBounds  = true
        ///
        text2.layer.cornerRadius = text2.frame.size.width / 2
        text2.clipsToBounds  = true
        //
        text3.layer.cornerRadius = text3.frame.size.width / 2
        text3.clipsToBounds  = true
        //
        text4.layer.cornerRadius = text4.frame.size.width / 2
        text4.clipsToBounds  = true
        //
        btnVerification.layer.cornerRadius = 25.0
        btnVerification.layer.masksToBounds = true
        
        text1.setLeftPaddingPoints(23)
       // text1.setRightPaddingPoints(23)
        text2.setLeftPaddingPoints(23)
        //text2.setRightPaddingPoints(23)
        text3.setLeftPaddingPoints(23)
        //text3.setRightPaddingPoints(23)
        text4.setLeftPaddingPoints(23)
        //text4.setRightPaddingPoints(23)
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func btnResend(_ sender: Any) {
    }
    @IBAction func btnVerification(_ sender: Any) {
          let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
          let nextViewController = storyBoard.instantiateViewController(withIdentifier: "tabBarVC") as! tabBarVC
          self.present(nextViewController, animated:true, completion:nil)
    }
    
}

//
//  AddRequestVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/31/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class AddRequestVC: UIViewController {

    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var txt3: UITextView!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var img3: UIButton!
    @IBOutlet weak var img2: UIButton!
    @IBOutlet weak var img1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        img1.layer.cornerRadius = img1.frame.size.width / 2
        img1.clipsToBounds  = true
        //
        img2.layer.cornerRadius = img2.frame.size.width / 2
        img2.clipsToBounds  = true
        //
        img3.layer.cornerRadius = img3.frame.size.width / 2
        img3.clipsToBounds  = true
        //
        
        txt1.setLeftPaddingPoints(8)
        txt1.setRightPaddingPoints(8)
        
        txt2.setLeftPaddingPoints(8)
        txt2.setRightPaddingPoints(8)
    }
    
    @IBAction func btnAdd(_ sender: Any) {
    }
    
    @IBAction func backbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RequestsVC") as? RequestsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}

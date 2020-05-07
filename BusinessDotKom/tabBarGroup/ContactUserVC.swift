//
//  ContactUserVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/31/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ContactUserVC: UIViewController {

    fileprivate let application = UIApplication.shared
    
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds  = true
    }
   
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RequestDetalisVC") as? RequestDetalisVC
        self.navigationController?.pushViewController(vc!, animated: true)
    
    }
    
    @IBAction func btnMail(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"http://www.gmail.com")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func btnCall(_ sender: UIButton) {
        if let phoneURL = URL(string: "tel://01001929079"){
            if application.canOpenURL(phoneURL){
                application.open(phoneURL, options: [:], completionHandler: nil)
            }
            }
            
        }
    }


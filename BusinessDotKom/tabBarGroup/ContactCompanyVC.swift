//
//  ContactCompanyVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ContactCompanyVC: UIViewController {

   
     fileprivate let application = UIApplication.shared
     override func viewDidLoad() {
         super.viewDidLoad()
         
        
     }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ServicesVC") as? ServicesVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
     
     @IBAction func btnMail(_ sender: UIButton) {
         UIApplication.shared.open(URL(string:"http://www.apple.com")! as URL, options: [:], completionHandler: nil)
     }
     @IBAction func btnCall(_ sender: UIButton) {
         if let phoneURL = URL(string: "tel://01001929079"){
             if application.canOpenURL(phoneURL){
                 application.open(phoneURL, options: [:], completionHandler: nil)
             }
             }
             
         }
     }


    



//
//  ContactSupplierProfileVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/6/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ContactSupplierProfileVC: UIViewController {

    @IBOutlet weak var btnCall: UIButton!
    @IBOutlet weak var btnEmail: UIButton!
    
     fileprivate let application = UIApplication.shared
     override func viewDidLoad() {
         super.viewDidLoad()
         
                        btnCall.layer.cornerRadius = 25.0
                        btnCall.layer.masksToBounds = true
              btnEmail.layer.cornerRadius = 25.0
              btnEmail.layer.masksToBounds = true
     }
    
      @IBAction func back(_ sender: Any) {
          let vc = storyboard?.instantiateViewController(withIdentifier: "SupplierProfileMainVC") as? SupplierProfileMainVC
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


  


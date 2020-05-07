//
//  SignUpSupplierVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/12/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SignUpSupplierVC: UIViewController {
    
   
    @IBOutlet weak var txtSupplierName: UITextField!
    @IBOutlet weak var txtCategories: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var txtLandLine: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var confirmPasswordView: UIView!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnSignUpOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        txtSupplierName.layer.cornerRadius = 25.0
        txtSupplierName.layer.masksToBounds = true
        txtSupplierName.setLeftPaddingPoints(8)
        txtSupplierName.setRightPaddingPoints(8)
        
        txtCategories.layer.cornerRadius = 25.0
        txtCategories.layer.masksToBounds = true
        txtCategories.setLeftPaddingPoints(8)
        txtCategories.setRightPaddingPoints(8)
        
        txtEmail.layer.cornerRadius = 25.0
        txtEmail.layer.masksToBounds = true
        txtEmail.setLeftPaddingPoints(8)
        txtEmail.setRightPaddingPoints(8)
        
        txtPhoneNumber.layer.cornerRadius = 25.0
        txtPhoneNumber.layer.masksToBounds = true
        txtPhoneNumber.setLeftPaddingPoints(8)
        txtPhoneNumber.setRightPaddingPoints(8)
        
        txtLandLine.layer.cornerRadius = 25.0
        txtLandLine.layer.masksToBounds = true
        txtLandLine.setLeftPaddingPoints(8)
        txtLandLine.setRightPaddingPoints(8)
        
        passwordView.layer.cornerRadius = 25.0
        
        confirmPasswordView.layer.cornerRadius = 25.0
        
        btnSignUpOutlet.layer.cornerRadius = 25.0
        btnSignUpOutlet.layer.masksToBounds = true
       
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnHidePassword(_ sender: Any) {
        if (txtPassword.isSecureTextEntry == false) {
            txtPassword.isSecureTextEntry = true
        } else {
            txtPassword.isSecureTextEntry = false
        }
    }
    
    @IBAction func btnHideConfirmPassword(_ sender: Any) {
        if (txtConfirmPassword.isSecureTextEntry == false) {
            txtConfirmPassword.isSecureTextEntry = true
        } else {
            txtConfirmPassword.isSecureTextEntry = false
        }
    }
    
    @IBAction func btnNext(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "NextSignUpSupplierVC") as! NextSignUpSupplierVC
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

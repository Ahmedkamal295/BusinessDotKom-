//
//  SignInSupplierServicesVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/14/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SignInSupplierServicesVC: UIViewController {

    var isActive:Bool = false
    @IBOutlet weak var btnSupplier: UIButton!
    @IBOutlet weak var btnServices: UIButton!
    @IBOutlet weak var txtEmailOrMobile: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSignInOutlet: UIButton!
    @IBOutlet weak var select1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        txtEmailOrMobile.layer.cornerRadius = 25.0
        txtEmailOrMobile.layer.masksToBounds = true
        
        txtEmailOrMobile.setLeftPaddingPoints(8)
        txtEmailOrMobile.setRightPaddingPoints(8)
        
        passwordView.layer.cornerRadius = 25.0
        btnSupplier.layer.cornerRadius = 25.0
        btnServices.layer.cornerRadius = 25.0
        btnSignInOutlet.layer.cornerRadius = 25.0
        btnSignInOutlet.layer.masksToBounds = true
       
    }
    
    @IBAction func select1(_ sender: Any) {
        if isActive {
            isActive = false
            select1.setImage(UIImage(named: "check box1"), for: .normal)
        }else{
            //    sender.pulsate()
            isActive = true
            select1.setImage(UIImage(named: "check box3"), for: .normal)
        }
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
    
    @IBAction func btnSignIn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "tabBarVC") as! tabBarVC
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func btnForgetPassword(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
              let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ForgetPasswordVC") as! ForgetPasswordVC
              self.present(nextViewController, animated:true, completion:nil)
        // forget password
    }
    
    @IBAction func btnCreateAccount(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpSupplierVC") as! SignUpSupplierVC
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func btnSupplier(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignInSupplierVC") as! SignInSupplierVC
        self.present(nextViewController, animated:false, completion:nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}


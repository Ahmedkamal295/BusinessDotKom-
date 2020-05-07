//
//  SignInUserVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/12/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SignInUserVC: UIViewController {
       var isActive:Bool = false
 
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSignInOutlet: UIButton!
    
    @IBOutlet weak var select1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        

       
    
        
        background.layer.cornerRadius = 25.0
        background.layer.masksToBounds = true
        
        txtEmail.layer.cornerRadius = 25.0
        txtEmail.layer.masksToBounds = true
        txtEmail.setLeftPaddingPoints(8)
        txtEmail.setRightPaddingPoints(8)
        
        PasswordView.layer.cornerRadius = 25.0

        btnSignInOutlet.layer.cornerRadius = 25.0
        btnSignInOutlet.layer.masksToBounds = true
    }
    
    @IBAction func select1(_ sender: UIButton) {
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
    
    @IBAction func btnFacebook(_ sender: Any) {
        // facebook login
    }
    
    @IBAction func btnGmail(_ sender: Any) {
        
        
        
        // gmail login
    }
    
    @IBAction func btnSignIn(_ sender: Any) {
        
        guard let email = txtEmail.text , !email.isEmpty else {
            
            // alert please insert your email
            return
        }
        
        guard let pass = txtPassword.text , !pass.isEmpty else {
            
            
            return
        }
        
        Login()
        
        
    }
    
    @IBAction func btnForgetPassword(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ForgetPasswordVC") as! ForgetPasswordVC
        self.present(nextViewController, animated:true, completion:nil)
        
        // forget password
    }
    
    @IBAction func btnCreateAccount(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpUserVC") as! SignUpUserVC
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}


extension SignInUserVC {
    
    
    func Login(){
        
        let manager = Manager()
        
        let param = [
        
            "email" : txtEmail.text! ,
            "password" : txtPassword.text!
        
        ]
        
         manager.perform(methodType: .post, serviceName: .Login, parameters: param as [String : AnyObject]) { (JSON, String) -> Void in
                      
                  
                      
                      if String != nil {
                          
                          // error
                        
                        print("error")
                          UIApplication.shared.isNetworkActivityIndicatorVisible = false
                          
                      }else {
                        
                     
                        
                        do {
                            
                            
                            let data = try JSONDecoder().decode(LoginMoedel.self, from: (JSON?.data!)!)
                            
                            
                        
                            
                            Helper.SaveApitoken(token: data.data?.token)
                            
                            
                          let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "tabBarVC") as! tabBarVC
                            self.present(nextViewController, animated:true, completion:nil)
                            
                        }catch {
                            
                            // alert print error
                            
                        }
                        
                        
                        
                          UIApplication.shared.isNetworkActivityIndicatorVisible = false
                          
                          
                      }
                      
                  }
              }
          }
          
    
    
    


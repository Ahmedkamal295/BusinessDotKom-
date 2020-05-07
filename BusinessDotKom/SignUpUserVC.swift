//
//  SignUpUserVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/12/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SignUpUserVC: UIViewController {

    @IBOutlet weak var btnDrop: UIButton!
    @IBOutlet weak var tableViewDrop: UITableView!
    @IBOutlet weak var txtConsumerName: UITextField!
    @IBOutlet weak var txtConsumerEmail: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var confirmPasswordView: UIView!
    @IBOutlet weak var btnSignUpOutlet: UIButton!
    
    var citiesArray = [CitiesData]()
    
    var city_id : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDrop.isHidden = true
        getCities()
        txtConsumerName.layer.cornerRadius = 25.0
        txtConsumerName.layer.masksToBounds = true
        txtConsumerName.setLeftPaddingPoints(8)
        txtConsumerName.setRightPaddingPoints(8)
        
        txtConsumerEmail.layer.cornerRadius = 25.0
        txtConsumerEmail.layer.masksToBounds = true
        txtConsumerEmail.setLeftPaddingPoints(8)
        txtConsumerEmail.setRightPaddingPoints(8)
        
        txtPhoneNumber.layer.cornerRadius = 25.0
        txtPhoneNumber.layer.masksToBounds = true
        txtPhoneNumber.setLeftPaddingPoints(8)
        txtPhoneNumber.setRightPaddingPoints(8)
        
       
        
        passwordView.layer.cornerRadius = 25.0
        
        confirmPasswordView.layer.cornerRadius = 25.0
        
        btnSignUpOutlet.layer.cornerRadius = 25.0
        btnSignUpOutlet.layer.masksToBounds = true
        
    }
    @IBAction func btnDrop(_ sender: Any) {
        if tableViewDrop.isHidden {
            animate(toogle: true, type: btnDrop)
        } else {
            animate(toogle: false, type: btnDrop)
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
    
    @IBAction func btnHideConfirmPassword(_ sender: Any) {
        if (txtConfirmPassword.isSecureTextEntry == false) {
            txtConfirmPassword.isSecureTextEntry = true
        } else {
            txtConfirmPassword.isSecureTextEntry = false
        }
    }
    
    @IBAction func btnFacebook(_ sender: Any) {
        // facebook login
    }
    
    @IBAction func btnGmail(_ sender: Any) {
        // gmail login
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        
        sinnUpuser()
      
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    func animate(toogle: Bool, type: UIButton) {
    
    if type == btnDrop {
        
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.tableViewDrop.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.2) {
                self.tableViewDrop.isHidden = true
            }
        }
        
    }
}

}
extension SignUpUserVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return citiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = citiesArray[indexPath.row].name
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        btnDrop.setTitle(citiesArray[indexPath.row].name, for: .normal)
        city_id = citiesArray[indexPath.row].id
        animate(toogle: false, type: btnDrop)
        
    }
    
    
}

extension SignUpUserVC {
    
      
        func sinnUpuser(){
            
            let manager = Manager()
            
            let param = [
            
                "name" : txtConsumerName.text! ,
                "email" : txtConsumerEmail.text! ,
                "mobile" : txtPhoneNumber.text! ,
                "country_id" : "1",
                "city_id" : "\(city_id ?? 0)" ,
                "password" : txtPassword.text! ,
                "password_confirmation" : txtConfirmPassword.text!
                
            
            ]
            
             manager.perform(methodType: .post, serviceName: .register, parameters: param as [String : AnyObject]) { (JSON, String) -> Void in
                          
                      
                          
                          if String != nil {
                              
                              // error
                            
                            print("error")
                              UIApplication.shared.isNetworkActivityIndicatorVisible = false
                              
                          }else {
                            
                            print(JSON)
                            
                         let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                               let nextViewController = storyBoard.instantiateViewController(withIdentifier: "tabBarVC") as! tabBarVC
                               self.present(nextViewController, animated:true, completion:nil)
                            
    //                        do {
    //
    //
    //                            let data = try JSONDecoder().decode(LoginMoedel.self, from: JSON)
    //
    //
    //                        }catch {
    //
    //
    //
    //                        }
                            
                            
                            
                              UIApplication.shared.isNetworkActivityIndicatorVisible = false
                              
                              
                          }
                          
                      }
                  }
    
    
    
        func getCities(){
            
            let manager = Manager()
          
            
            
            manager.perform(methodType: .get, serviceName: .city, parameters: nil ) { (JSON, String) -> Void in
                          
                      
                          
                          if String != nil {
                              
                              // error
                            
                            print("error")
                              UIApplication.shared.isNetworkActivityIndicatorVisible = false
                              
                          }else {
                            
                            print(JSON)
                            
                       
                            
                            do {
    
    
                                let data = try JSONDecoder().decode(citiesModel.self, from: (JSON?.data)!)
    
    
                                self.citiesArray = data.data ?? []
                              //  self.citiesArray.append(CitiesData(id: id?, name: name?))
                                   
                                self.tableViewDrop.reloadData()
                                                      
                                                             
                            }catch {
    
    
                                print("error")
    
                            }
                            
                            
                            
                              UIApplication.shared.isNetworkActivityIndicatorVisible = false
                              
                              
                          }
                          
                      }
                  }
    
    
}


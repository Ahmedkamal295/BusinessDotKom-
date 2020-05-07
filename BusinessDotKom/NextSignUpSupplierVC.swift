//
//  NextSignUpSupplierVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/13/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class NextSignUpSupplierVC: UIViewController {
    @IBOutlet weak var btnCountry: UIButton!
    @IBOutlet weak var tableViewCountry: UITableView!
    @IBOutlet weak var btnCity: UIButton!
    @IBOutlet weak var tableViewCity: UITableView!
    @IBOutlet weak var brnState: UIButton!
    @IBOutlet weak var tableViewState: UITableView!
    @IBOutlet weak var txtStreetNo: UITextField!
    @IBOutlet weak var txtZipCode: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var btnSignUpOutlet: UIButton!
    
    var City = ["Cairo","Alx","Tanta","Cairo","Alx","Tanta",]
    override func viewDidLoad() {
        super.viewDidLoad()
        
         tableViewCountry.isHidden = true
        tableViewCity.isHidden = true
        tableViewState.isHidden = true
        
        btnCountry.layer.cornerRadius = 25.0
        
        btnCity.layer.cornerRadius = 25.0
        
        brnState.layer.cornerRadius = 25.0
        
        txtStreetNo.layer.cornerRadius = 25.0
        txtStreetNo.layer.masksToBounds = true
        txtStreetNo.setLeftPaddingPoints(8)
        txtStreetNo.setRightPaddingPoints(8)
        
        txtZipCode.layer.cornerRadius = 25.0
        txtZipCode.layer.masksToBounds = true
        txtZipCode.setLeftPaddingPoints(8)
        txtZipCode.setRightPaddingPoints(8)
        
        
        txtAddress.layer.cornerRadius = 25.0
        txtAddress.layer.masksToBounds = true
        txtAddress.setLeftPaddingPoints(8)
        txtAddress.setRightPaddingPoints(8)
        
        locationView.layer.cornerRadius = 25.0
        btnSignUpOutlet.layer.cornerRadius = 25.0
        btnSignUpOutlet.layer.masksToBounds = true
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func btnLocation(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "MyLocation") as? MyLocation
//        self.navigationController?.pushViewController(vc!, animated: true)
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "MyLocation") as! MyLocation
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "tabBarVC") as! tabBarVC
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func btnCity(_ sender: Any) {
        if tableViewCity.isHidden {
                        animat(toogle: true, type: btnCity)
                    } else {
                        animat(toogle: false, type: btnCity)
                    }
    }
    @IBAction func btnState(_ sender: Any) {
        if tableViewState.isHidden {
                        animation(toogle: true, type: brnState)
                    } else {
                        animation(toogle: false, type: brnState)
                    }
    }
    @IBAction func btnCountry(_ sender: Any) {
              if tableViewCountry.isHidden {
                  animate(toogle: true, type: btnCountry)
              } else {
                  animate(toogle: false, type: btnCountry)
              }
              
          }
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    // opne tableViewCountry
    func animate(toogle: Bool, type: UIButton) {
        
        if type == btnCountry {
            
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.tableViewCountry.isHidden = false
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.tableViewCountry.isHidden = true
                }
            }
            
        }
    }
    // opne tableViewState
    func animation(toogle: Bool, type: UIButton) {
        
        if type == brnState {
            
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.tableViewState.isHidden = false
                }
                
                
            } else {
                
                UIView.animate(withDuration: 0.2) {
                    self.tableViewState.isHidden = true
                }
            }
            
        }
    }
    // opne tableViewCity
    func animat(toogle: Bool, type: UIButton) {
           
           if type == btnCity {
               
               if toogle {
                   UIView.animate(withDuration: 0.3) {
                       self.tableViewCity.isHidden = false
                   }
                   
                   
               } else {
                   
                   UIView.animate(withDuration: 0.2) {
                       self.tableViewCity.isHidden = true
                   }
               }
               
           }
       }

    }

extension NextSignUpSupplierVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return City.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = City[indexPath.row]
        cell.selectionStyle = .none
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  btnCountry.setTitle(City[indexPath.row].name, for: .normal)
       // city_id = City[indexPath.row].id
        animate(toogle: false, type: btnCountry)
    }
    
    
}

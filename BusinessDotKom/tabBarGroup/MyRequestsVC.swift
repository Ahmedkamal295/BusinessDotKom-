//
//  MyRequestsVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/1/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class MyRequestsVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let date = [("12-12-2020"),("12-12-2020"),("12-12-2020"),("12-12-2020"),("12-12-2020"),("12-12-2020"),("12-12-2020"),]
    let descriptionProduct = [("Request Desc Request Desc Request Desc "),("Request Desc Request Desc Request Desc"),("Request Desc Request Desc Request Desc"),("Request Desc Request Desc Request Desc"),("Request Desc Request Desc Request Desc"),("Request Desc Request Desc Request Desc"),("Request Desc Request Desc Request Desc"),]
    
    var img = [ UIImage(named:"watch"),
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,]
    
    var UserName = [("UserName"),("UserName"),("UserName"),("UserName"),("UserName"),("UserName"),("UserName")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        tableView.tableFooterView = UIView()
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 270
            
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyRequestsCell
        
        cell?.selectionStyle = .none
        cell?.userName.text = UserName[indexPath.row]
        cell?.date.text = date[indexPath.row]
        cell?.descriptionlbl.text = descriptionProduct[indexPath.row]
        cell?.img.image = img[indexPath.row]
        
        
        cell?.index = indexPath
        cell?.delegate = self
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        // let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let vc = storyboard?.instantiateViewController(withIdentifier: "RequestDetalisVC") as? RequestDetalisVC
//        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func backbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as? ProfileVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
}
extension MyRequestsVC: MyRequestsCellProtocol {
    func deleteCell(indx: Int) {
        UserName.remove(at: indx)
        tableView.reloadData()
    }
    
    
}

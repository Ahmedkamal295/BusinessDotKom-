//
//  TrackYourOrdersVC.swift
//  climateWater
//
//  Created by Ahmed on 12/27/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit
class TrackYourOrdersVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
   
    let lblN = [("7"),("7"),("7"),("7"),("7"),("7"),("7"),]
    let lblP = [("RS"),("RS"),("RS"),("RS"),("RS"),("RS"),("RS"),]
    
    var img = [ UIImage(named:"watch"),
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,
                UIImage(named:"watch") ,]
    
    var lblD = [("UserName"),("UserName"),("UserName"),("UserName"),("UserName"),("UserName"),("UserName")]
    
   
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        tableView.tableFooterView = UIView()
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 270
            
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblD.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCellOrder
        
        cell?.selectionStyle = .none
        cell?.lbl1.text = lblD[indexPath.row]
        cell?.lbl2.text = lblN[indexPath.row]
        cell?.lbl3.text = lblP[indexPath.row]
        cell?.img.image = img[indexPath.row]
        
        return cell!
    }
    
   
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    }
    


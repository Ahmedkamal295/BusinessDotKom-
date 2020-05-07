//
//  AllServicesVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/6/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class AllServicesVC: UIViewController {

    var Subname = ["Sub-Services","Sub-Services","Sub-Services",]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnDrop: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.isHidden = true
    
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnDrop(_ sender: Any) {
        if tableView.isHidden {
            animate(toogle: true)
        } else {
            animate(toogle: false)
        }
    }
    func animate(toogle:Bool) {
        if toogle {
           UIView.animate(withDuration: 2.0) {
            self.tableView.isHidden = false
        }
        } else{
            UIView.animate(withDuration: 2.0) {
                self.tableView.isHidden = true
        }
    }
  }
}
extension AllServicesVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Subname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? cellAllServices
        
    cell?.lbl.text = Subname[indexPath.row]
       // cell?.descriptionlbl.text = descriptionProduct[indexPath.row]
      
        return cell!
        
    }
    
    
}

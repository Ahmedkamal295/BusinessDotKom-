//
//  AllServices.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/10/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class AllServices: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    var nameService = ["Servise Name Here","Servise Name Here","Servise Name Here","Servise Name Here","Servise Name Here","Servise Name Here",]
    var nameSub = ["Sub-Service","Sub-Service","Sub-Service","Sub-Service","Sub-Service","Sub-Service",]

    var SelectIndex = -1
    var isCollapce = false
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.estimatedRowHeight = 114
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ServicesVC") as? ServicesVC
             self.navigationController?.pushViewController(vc!, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.SelectIndex == indexPath.row && isCollapce == true
        {
            return 114
        }else
        {
            return 70
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameService.count
      }
    
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CellService
        cell.lblService.text = nameService[indexPath.row]
        cell.lbl1.text = nameSub[indexPath.row]
        cell.lbl2.text = nameSub[indexPath.row]
        cell.lbl3.text = nameSub[indexPath.row]
        return cell
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if SelectIndex == indexPath.row
        {
            if self.isCollapce == false
            {
                self.isCollapce = true
            }else
            {
                self.isCollapce = false
            }
            
        }else
        {
            self.isCollapce = true
        }
        
        self.SelectIndex = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

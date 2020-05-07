//
//  SuppliersVc.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SuppliersVc: UIViewController,UITableViewDataSource,UITableViewDelegate {

  var imgArr = [("watcht"),("Alexandra Daddario"),("Angelina Jolie"),("Anne Hathaway"),("Dakota Johnson"),("Emma Stone"),("Emma Watson"),("Halle Berry"),("Jennifer Lawrence"),("Jessica Alba"),("Scarlett Johansson"),("watcht"),("Adele"),("Angelina Jolie"),("Halle Berry"),]
    var nameStore = [("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name")]
    let Price = [("30.000  $"),
                 ("40.000  $"),
                 ("50.000  $"),
                 ("40.000  $"),
                 ("60.000  $"),
                 ("80.000  $"),
                 ("20.000  $")]
    
     @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func addRequestBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddRequestVC") as? AddRequestVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnVisitStore(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VisitStoreVC") as? VisitStoreVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCellSuppliers
            //else do {fatalError("Unable to create explore table view cell")}
    //        cell?.lblSupplierName.text = NameSupplier[indexPath.row]
            return cell!
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 310
        }
}
extension SuppliersVc : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCellSuppliers
        cell!.lblStoreName.text = nameStore[indexPath.row]
        cell!.lblPrice.text = Price[indexPath.row]
       // cell!.img.image = UIImage(named: imgArr[indexPath.row])
//        cell!.contentView.layer.masksToBounds = true
//        cell!.backgroundColor = UIColor.white
//        cell!.layer.shadowColor = UIColor.gray.cgColor
//        cell!.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        cell!.layer.shadowRadius = 2.0
//        cell!.layer.shadowOpacity = 0.5
//        cell!.layer.masksToBounds = false
//        cell!.layer.shadowPath = UIBezierPath(roundedRect:cell!.bounds, cornerRadius:cell!.contentView.layer.cornerRadius).cgPath
        return cell!
    }
    func bestFrameSize() -> CGFloat {
            let frameHeight = self.view.frame.height
            let frameWidth = self.view.frame.width
            let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
            return bestFrameSize
        }
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          let bounds = collectionView.bounds
                let heightVal = self.view.frame.height
                let widthVal = self.view.frame.width
                let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
          return CGSize(width: 160, height: 194)
      }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 2, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}



//
//  VisitStoreVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/6/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class VisitStoreVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = [  UIImage(named:"images-1"),
                    UIImage(named:"images-2") ,
                    UIImage(named:"images-3") ,
                    UIImage(named:"images-4") ,
                    UIImage(named:"images-2") ,]
    
    
    var imgColl = [ UIImage(named:"watch"),
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch"),
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") , ]
    
    
    
    var nameProduct = [("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here")]
    
    var nameStore = [("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name")]
    
    let Price = [("30.000  "),
                 ("40.000 "),
                 ("50.000 "),
                 ("40.000 "),
                 ("60.000 "),
                 ("80.000 "),
                 ("20.000 "),
                 ("40.000 "),
                 ("60.000 "),
                 ("80.000 "),]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func backbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SuppliersVc") as? SuppliersVc
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func contactSupplierBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContactSuppliersVisitVC") as? ContactSuppliersVisitVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnSupplierProfileVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SupplierProfileMainVC") as? SupplierProfileMainVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}


extension VisitStoreVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.collectionView {
            return imgColl.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellVisitStore
        cell.lblName.text = nameProduct[indexPath.row]
        cell.lblPrice.text = Price[indexPath.row]
        cell.img.image = imgColl[indexPath.row]
        
        return cell
        
    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ProductNameVC") as? ProductNameVC
//        self.navigationController?.pushViewController(vc!, animated: false)
//    }
}



extension VisitStoreVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 15, bottom: 15, right: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        let heightVal = self.view.frame.height
        let widthVal = self.view.frame.width
        let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
        return CGSize(width: cellsize - 20   , height: 200 )
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}

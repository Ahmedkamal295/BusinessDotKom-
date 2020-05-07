//
//  HomeVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/12/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit
import Alamofire

class HomeVC: UIViewController ,UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate{
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
    var imgArr = [  UIImage(named:"images-1"),
                    UIImage(named:"images-2") ,
                    UIImage(named:"images-3") ,
                    UIImage(named:"images-4") ,
                    UIImage(named:"images-2") ,]
    
    var imgCell1 = [ UIImage(named:"watch"),
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,
                    UIImage(named:"watch") ,]
    
    
    
   var nameProduct = [("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here")]
    
    
    var nameStore = [("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name"),("Store Name")]
    
    let Price = [("30.000  "),
                      ("40.000 "),
                      ("50.000 "),
                      ("40.000 "),
                      ("60.000 "),
                      ("80.000 "),
                      ("20.000 ")]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //
               pageView.numberOfPages = imgArr.count
               pageView.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
        
        
    }
    @IBAction func btnSuppliersSuggestionVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SuppliersSuggestionVC") as? SuppliersSuggestionVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnServices(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ServicesVC") as? ServicesVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnNewArrivals(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "NewArrivalsVC") as? NewArrivalsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnSuppliers(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SuppliersVc") as? SuppliersVc
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnHotOffers(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OffersSuppliersVC") as? OffersSuppliersVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCellHome
            //else do {fatalError("Unable to create explore table view cell")}
    //        cell?.lblSupplierName.text = NameSupplier[indexPath.row]
            return cell!
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 314
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           return true
       }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @objc func changeImage() {
        
        if counter < imgArr.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
             pageView.currentPage = counter
            counter += 1
        } else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
             pageView.currentPage = counter
            counter = 1
        }
        
    }
    @IBAction func addRequestBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddRequestVC") as? AddRequestVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
extension HomeVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    if collectionView == self.sliderCollectionView {
               return imgArr.count
                 }else{
                      return 7
                  }
    
       }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if collectionView == self.sliderCollectionView {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
                if let vc = cell.viewWithTag(111) as? UIImageView {
                    vc.image = imgArr[indexPath.row]
                }
                return cell
                
            } else  {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellCollectionHome
                cell.productName.text = nameProduct[indexPath.row]
                cell.storeName.text = nameStore[indexPath.row]
                cell.price.text = Price[indexPath.row]
//                cell.img.image = imgCell1[indexPath.row]
                return cell
     
            }
        }
  
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 8, bottom: 8, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.sliderCollectionView {
            let size = sliderCollectionView.frame.size
            return CGSize(width: size.width, height: size.height)
        }else{
            let bounds = collectionView.bounds
            let heightVal = self.view.frame.height
            let widthVal = self.view.frame.width
            let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/3
            return CGSize(width: 162  , height: 239 )
        }
    }
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == self.sliderCollectionView {
            return 0.0
        } else {
            return 10
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
   
  
   

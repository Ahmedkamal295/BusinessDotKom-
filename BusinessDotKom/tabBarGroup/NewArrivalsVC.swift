//
//  NewArrivalsVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class NewArrivalsVC: UIViewController{
   
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
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
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
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
}
extension NewArrivalsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.sliderCollectionView {
            return imgArr.count
        }else{
            return imgColl.count
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewArrivalsCell
            cell.lblName.text = nameProduct[indexPath.row]
            cell.lblStoreName.text = nameStore[indexPath.row]
            cell.lblPrice.text = Price[indexPath.row]
            cell.img.image = imgColl[indexPath.row]
            return cell
 
        }
    }
}


extension NewArrivalsVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 15, bottom: 15, right: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.sliderCollectionView {
            let size = sliderCollectionView.frame.size
            return CGSize(width: size.width, height: size.height)
        } else {
            let bounds = collectionView.bounds
            let heightVal = self.view.frame.height
            let widthVal = self.view.frame.width
            let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
            return CGSize(width: cellsize - 20   , height: 260 )
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}

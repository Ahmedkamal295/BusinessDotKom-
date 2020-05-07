//
//  CategoriesVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/14/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet weak var collectionViewSub: UICollectionView!
    @IBOutlet weak var lblTopSuppliers: UILabel!
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    @IBOutlet weak var collectionViewTopSuppliers: UICollectionView!
    
   
    var imgArr = [  UIImage(named:"imgCar"),
                    UIImage(named:"imgCar2") ,
                    UIImage(named:"imgCar3") ,]
    
    var imgTop = [  UIImage(named:"imgCar"),
                    UIImage(named:"imgCar2") ,
                    UIImage(named:"imgCar3") ,
                    UIImage(named:"imgCar3") ,
                    UIImage(named:"imgCar"),
                    UIImage(named:"imgCar2") ,
                    UIImage(named:"imgCar3") ,
                    UIImage(named:"imgCar3") ,]
    
    var imgSub =     [  UIImage(named:"imgCar"),
                       UIImage(named:"imgCar2") ,]
    
    var SunName = [(" Sub Category 1"),("Sub Category 2"),]
    var timer = Timer()
    var counter = 0
    
  var SelectIndex = -1
    var isCollapce = false
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
//        collectionViewSub.estimatedRowHeight = 114
//        collectionViewSub.rowHeight = UICollectionView.automaticDimension
//
    lblTopSuppliers.layer.cornerRadius = 25.0
    lblTopSuppliers.layer.masksToBounds = true
        
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
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
    
}

extension CategoriesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

            if collectionView == self.sliderCollectionView {
                return imgArr.count
            } else if collectionView == self.collectionViewTopSuppliers{
                return imgTop.count
                
                   }else{
                       return SunName.count
                   }
        
        }

    func collectionView(_ collectionView: UICollectionView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           if self.SelectIndex == indexPath.row && isCollapce == true
           {
               return 114
           }else
           {
               return 70
           }
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
           // collectionViewSub.deselectRow(at: indexPath, animated: true)
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
            //collectionViewSub.reloadRows(at: [indexPath], with: .automatic)
        }
    

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          //  if collectionView == self.sliderCollectionView {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
                if let vc = cell.viewWithTag(111) as? UIImageView {
                    vc.image = imgArr[indexPath.row]
                }
                return cell
                
            
//            } else if collectionView == self.collectionViewTopSuppliers {
//                let cell = collectionViewTopSuppliers.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellTopSuppliers
//                cell.img.image = imgTop[indexPath.row]
//                return cell
//             }else{
//                let cell = self.collectionViewSub.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellSubCategory
//               // cell.lblSub.text = SunName[indexPath.row]
//                cell.img.image = imgSub[indexPath.row]
//                return cell
            
                
            }
    func bestFrameSize() -> CGFloat {
               let frameHeight = self.view.frame.height
               let frameWidth = self.view.frame.width
               let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
               return bestFrameSize
           }
        }
   // }

    

extension CategoriesVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == self.sliderCollectionView {
                 return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

              }else{
                  //let bounds = collectionViewTopSuppliers.bounds
                 return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8)
              }
          }
        
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.sliderCollectionView {
            let size = sliderCollectionView.frame.size
            return CGSize(width: size.width, height: size.height)

        }else{
           let bounds = collectionViewTopSuppliers.bounds
            let heightVal = self.view.frame.height
            let widthVal = self.view.frame.width
            let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/4
            return CGSize(width: cellsize - 63   , height: 50 )
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
           if collectionView == self.sliderCollectionView {
               return 0.0
           } else {
               return 8.0
           }
       }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
         if collectionView == self.collectionViewTopSuppliers {
                      return 0.0
                  } else {
                      return 0.0
                  }
              }
    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
}


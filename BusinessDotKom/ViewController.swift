//
//  ViewController.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/5/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
  
    
    var imgArr = [  UIImage(named: "Group 2940"),
                    UIImage(named:"Layer 2") ,
                    UIImage(named:"Group 2939") ]
       
         var name1 = [("Open Your Store"),("Follow Stores"),("Search for Any Services"),]
         var name2 = [("Follow your Progress and know all the information about your products and orders, get daily reports to follow the work in your store"),("Follow all your Customers, Mega Stores, Connect with them about prices of your products, Learn more about your customer's needs."),("Now you can keep track of your products, quantity, availability, and types. You can also add a product, modify all of your products information."),]
     //  var timer = Timer()
       var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        nextBtn.layer.cornerRadius = 25.0
        nextBtn.layer.masksToBounds = true
        
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = sliderCollectionView.contentOffset.x/sliderCollectionView.frame.width
        pageView.currentPage = Int(page)
    }
     func changeImage() {
          
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
    
    @IBAction func nextBtn(_ sender: Any) {
            changeImage()
        }
        
    
    @IBAction func skipBtn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "WelcomeVc") as! WelcomeVc
        self.present(nextViewController, animated:true, completion:nil)
    }
   

}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SliderCellVC
        if let vc = cell!.viewWithTag(111) as? UIImageView {
            vc.image = imgArr[indexPath.row]
            cell?.lbl1.text = name1[indexPath.row]
            cell?.lbl2.text = name2[indexPath.row]
        }
        return cell!
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = sliderCollectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}

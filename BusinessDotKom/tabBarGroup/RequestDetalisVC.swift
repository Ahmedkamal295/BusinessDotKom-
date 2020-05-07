//
//  RequestDetalisVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/31/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class RequestDetalisVC: UIViewController {

    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
    @IBOutlet weak var imgRequester: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    var imgArr = [  UIImage(named:"images-1"),
                    UIImage(named:"images-2") ,
                    UIImage(named:"images-3") ,
                    UIImage(named:"images-4") ,
                    UIImage(named:"images-2") ,]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imgRequester.layer.cornerRadius = imgRequester.frame.size.width / 2
        imgRequester.clipsToBounds  = true
        //
        img1.layer.cornerRadius = img1.frame.size.width / 2
        img1.clipsToBounds  = true
        //
        img2.layer.cornerRadius = img2.frame.size.width / 2
        img2.clipsToBounds  = true
        //
        img3.layer.cornerRadius = img3.frame.size.width / 2
        img3.clipsToBounds  = true
        //
        img4.layer.cornerRadius = img4.frame.size.width / 2
        img4.clipsToBounds  = true
        //
        img5.layer.cornerRadius = img5.frame.size.width / 2
        img5.clipsToBounds  = true
        //
        img6.layer.cornerRadius = img6.frame.size.width / 2
        img6.clipsToBounds  = true
        
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
    @IBAction func contactUserBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContactUserVC") as? ContactUserVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RequestsVC") as? RequestsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

extension RequestDetalisVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if let vc = cell.viewWithTag(111) as? UIImageView {
            vc.image = imgArr[indexPath.row]
        }
        return cell
    }
}

extension RequestDetalisVC: UICollectionViewDelegateFlowLayout {
    
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
    
    //    override var preferredStatusBarStyle: UIStatusBarStyle {
    //        return .lightContent
    //    }
}



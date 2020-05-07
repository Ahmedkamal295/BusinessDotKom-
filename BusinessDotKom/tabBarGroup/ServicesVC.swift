//
//  ServicesVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/4/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ServicesVC: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = [  UIImage(named:"minicooper1"),
                    UIImage(named:"bmw2") ,
                    UIImage(named:"mercedes2") ,
                    UIImage(named:"honda2"),
                    UIImage(named:"ferrari2") ,
                    UIImage(named:"mitsubishi2") ,
                     UIImage(named:"toyota2") ,
                    UIImage(named:"kia2"),
                    UIImage(named:"bmw2") ,
                    UIImage(named:"mercedes2") ,]
    
    var nameProduct = [("Company Name"),("Company Name"),("Company Name"),("Company Name"),("Company Name"),("Company Name"),("Company Name"),("Company Name"),("Company Name"),("Company Name"),]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAllService(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AllServices") as? AllServices
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ServicesCell
        //        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 100, 0)
        //        let rotationAngleRadians = 90.0 * CGFloat(Double.pi/180.0)
        //        // let rotationTransform = CATransform3DMakeRotation(rotationAngleRadians, 0, 0, 1)
        //        cell.layer.transform = rotationTransform
        //        UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity })
        //
        
        cell.contentView.layer.masksToBounds = true
        cell.backgroundColor = UIColor.white
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        
        //   cell.selectionStyle = .none
        cell.lbl.text = nameProduct[indexPath.row]
        cell.img.image = imgArr[indexPath.row]
        
        cell.delegate = self
        cell.index = indexPath
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let vc = storyboard?.instantiateViewController(withIdentifier: "MainInfoVC") as? MainInfoVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    func bestFrameSize() -> CGFloat {
        let frameHeight = self.view.frame.height
        let frameWidth = self.view.frame.width
        let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
        return bestFrameSize
    }
   
}

extension ServicesVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 15, bottom: 15, right: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        let heightVal = self.view.frame.height
        let widthVal = self.view.frame.width
        let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
        return CGSize(width: cellsize - 20   , height: 210 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}
extension ServicesVC: ServicesCellProtocol {
    func goCell(indx: Int){
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContactCompanyVC") as? ContactCompanyVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}


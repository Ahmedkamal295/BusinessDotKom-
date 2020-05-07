//
//  ProductsVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 2/1/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = [  UIImage(named:"mecro"),
                    UIImage(named:"printar") ,
                    UIImage(named:"AirPods") ,
                    UIImage(named:"lcd"),]
    
    var nameProduct = [("Product Name Here"),("Product Name Here"),("Product Name Here"),("Product Name Here")]
    
    let Price = [("2000 $  "),
                 ("1000 $ "),
                 ("111 $ "),
                 ("111 $ "),]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductsCell
//        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 100, 0)
//        let rotationAngleRadians = 90.0 * CGFloat(Double.pi/180.0)
//        // let rotationTransform = CATransform3DMakeRotation(rotationAngleRadians, 0, 0, 1)
//        cell.layer.transform = rotationTransform
//        UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity })
//
//       
//        cell.contentView.layer.masksToBounds = true
//        cell.backgroundColor = UIColor.white
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        cell.layer.shadowRadius = 2.0
//        cell.layer.shadowOpacity = 0.5
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
//        
        cell.delegate = self
        cell.index = indexPath
        
     //   cell.selectionStyle = .none
        cell.lblProductName.text = nameProduct[indexPath.row]
        cell.lblPrice.text = Price[indexPath.row]
        cell.img.image = imgArr[indexPath.row]
        
        return cell
    }
    
    func bestFrameSize() -> CGFloat {
        let frameHeight = self.view.frame.height
        let frameWidth = self.view.frame.width
        let bestFrameSize = (frameHeight > frameWidth ) ? frameHeight : frameWidth
        return bestFrameSize
    }
    @IBAction func backBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DashboardVC") as? DashboardVC
        self.navigationController?.pushViewController(vc!, animated: true)
    
    }
    @IBAction func addProductBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddProductsVC") as? AddProductsVC
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @IBAction func filterBtn(_ sender: Any) {
    }
}

extension ProductsVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30, left: 15, bottom: 15, right: 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        let heightVal = self.view.frame.height
        let widthVal = self.view.frame.width
        let cellsize = (heightVal < widthVal) ?  bounds.height/2 : bounds.width/2
        return CGSize(width: cellsize - 20   , height: 230 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
   
}
extension ProductsVC: ProductsCellProtocol {
    func deleteCell(indx: Int) {
        nameProduct.remove(at: indx)
        collectionView.reloadData()
}
    
}

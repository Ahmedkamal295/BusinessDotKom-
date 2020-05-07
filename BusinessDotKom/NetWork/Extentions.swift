//
//  Extentions.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import Foundation
import UIKit
import LXStatusAlert


extension UIViewController {
   func showStatus(image: UIImage , message: String){
//        let statusAlert = StatusAlert()
//        statusAlert.image = image
//        statusAlert.title = title
//        statusAlert.message = message
////        statusAlert.canBePickedOrDismissed = isUserInteractionAllowed
//        statusAlert.canBePickedOrDismissed = true
//        statusAlert.showInKeyWindow()
        let statusAlert = LXStatusAlert(image: image, title:message, duration: 3.0)
        statusAlert.show()

    }
    func alertSkipLogin(){
        let alert = UIAlertController.init(title: "Warning" , message: "please login first" ,  preferredStyle: .alert)
        alert.view.tintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        
        
        let cancelAction = UIAlertAction.init(title: "Ok", style: .cancel, handler: { (nil) in
            
//            appDelegate.setRoot(storyBoard: .authentication, vc: .splash)
            
            
        })
        
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func setShadow(view : UIView , width : Int , height: Int , shadowRadius: CGFloat , shadowOpacity: Float , shadowColor: CGColor){
        // to make the shadow with rounded corners and offset shadow form the bottom
        view.layer.shadowColor = shadowColor
        view.layer.shadowOffset = CGSize(width: width, height: height)
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOpacity = shadowOpacity
        view.clipsToBounds = true
        view.layer.masksToBounds = false
    }
  
}

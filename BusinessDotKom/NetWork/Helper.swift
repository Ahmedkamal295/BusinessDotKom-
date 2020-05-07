//
//  Helper.swift
//  BusinessDotKom
//
//  Created by Ahmed on 3/2/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//


import Foundation

import UIKit

class Helper: NSObject {
    
    class func api_toket()->String {
        
        let api_token = "token"
        return api_token
    }
    
    
    class func trip_Id()->String {
        
        let trip_id = "trip_id"
        return trip_id
    }
    
    
    
    class func SaveApitoken(token : String?){
        
        let def = UserDefaults.standard
        def.setValue(token, forKey: api_toket())
        def.synchronize()
        
        
    }
    
    
    class func getapitoken()->String? {
        
        let def = UserDefaults.standard
        return def.object(forKey: api_toket()) as? String
        
        
        
    }
    
    
    class func Savetrip_id(trip_id : String?){
        
        let def = UserDefaults.standard
        def.setValue(trip_id, forKey: trip_Id())
        def.synchronize()
        
        
    }
    
    
    class func Gettrip_id()->String? {

        let def = UserDefaults.standard
        return def.object(forKey: trip_Id()) as? String
        
        
    }
    
    
    
    class func Fcm_toket()->String {
        
        let Fcm_token = "Fcmtoken"
        return Fcm_token
    }
    
    
    
    
    
    class func SaveFcmtoken(Fcmtoken : String?){
        
        let def = UserDefaults.standard
        def.setValue(Fcmtoken, forKey: Fcm_toket())
        def.synchronize()
        
        
    }
    
    
    class func getFcmtoken()->String? {
        
        let def = UserDefaults.standard
        return def.object(forKey: Fcm_toket()) as? String
        
        
        
    }
    
    
    
    class func restartApp(_ id : String){
        guard let window = UIApplication.shared.keyWindow else{return}
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        var vc : UIViewController
        
        
        vc = sb.instantiateViewController(withIdentifier: id)
        
        window.rootViewController = vc
        UIView.transition(with: window, duration: 0.5, options: .showHideTransitionViews, animations: nil, completion: nil)
        
    }
    
    func restartApplication() {
        
        
    }
    
}

//
//  tabBarVC.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/12/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class tabBarVC: UITabBarController {

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.selectedIndex = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

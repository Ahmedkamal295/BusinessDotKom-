//
//  SettingsTableViewController.swift
//  BusinessDotKom
//
//  Created by Ahmed on 1/24/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit

class SettingsTableViewController: UIViewController {
    
     var isActive:Bool = false
    @IBOutlet weak var btnDashboard: UIButton!
    @IBOutlet weak var btnLanguages: UIButton!
    @IBOutlet weak var btnCurrency: UIButton!
    @IBOutlet weak var btnNotification: UIButton!
    @IBOutlet weak var btnPrivacy: UIButton!
    @IBOutlet weak var btnTerms: UIButton!
    @IBOutlet weak var btnAbout: UIButton!
    @IBOutlet weak var btnCustomer: UIButton!
    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var lblVersion: UILabel!
    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var btnLogOut: UIButton!
    @IBOutlet weak var btnFaceBook: UIButton!
    @IBOutlet weak var btnWhats: UIButton!
    @IBOutlet weak var btnInsta: UIButton!
    @IBOutlet weak var btnLinked: UIButton!
    
    fileprivate let application = UIApplication.shared
    override func viewDidAppear(_ animated: Bool) {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            lblVersion.text = version
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnLogOut.layer.cornerRadius = 25.0
        btnLogOut.layer.masksToBounds = true
       
    }
    
    
    @IBAction func btnFaceBook(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.facebook.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func btnWhats(_ sender: Any) {
         UIApplication.shared.open(URL(string:"https://api.whatsapp.com/send?phone=phoneNumber")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func btnInsta(_ sender: Any) {
         UIApplication.shared.open(URL(string:"https://www.instagram.com")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func btnLinked(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.linkedin.com")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func btnLogOut(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "WelcomeVc") as! WelcomeVc
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func switchBtn(_ sender: Any) {
        if isActive {
            isActive = false
            switchBtn.setImage(UIImage(named: "Switchon"), for: .normal)
        }else{
            
            isActive = true
            switchBtn.setImage(UIImage(named: "Switchoff"), for: .normal)
        }
        
    }
    
    
    @IBAction func btnDashboard(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DashboardVC") as? DashboardVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnLanguages(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ChangeLanguageVC") as? ChangeLanguageVC
             self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnCurrency(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CurrencyVC") as? CurrencyVC
             self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnNotification(_ sender: Any) {
    }
    @IBAction func btnPrivacy(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PrivacyVC") as? PrivacyVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnTerms(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TermsVC") as? TermsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnAbout(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AboutVC") as? AboutVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnCustomer(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CustomerVC") as? CustomerVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnShare(_ sender: Any) {
        let text = "Hey! Lets Download Business Dot Kom App \(kAPPURL)"
        let objectsToShare: [Any] = [text]
        let activityViewController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        activityViewController.setValue("Lets Download Business Dot Kom App", forKey: "subject")
        self.present(activityViewController, animated: true, completion: nil)
    }
}

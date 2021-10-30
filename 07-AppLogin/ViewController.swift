//
//  ViewController.swift
//  07-AppLogin
//
//  Created by Felipe Hernandez on 22/10/21.
//

import UIKit

class ViewController: UIViewController {

    var plist =  UserDefaults.standard
    
    //singleton
    
    let appDelegate = UIApplication.shared.delegate  as! AppDelegate
    
    @IBAction func onSalir(_ sender: Any) {
        
        plist.removeObject(forKey: "usuario")
        
        let mainStoryBoard = appDelegate.MainStoryBoard()
        
        let viewController = appDelegate.GetViewController(storyboard: mainStoryBoard, ViewControllerName: "Login")
        
        appDelegate.SetrootViewController(rootViewController: viewController, animate: false, tipo: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


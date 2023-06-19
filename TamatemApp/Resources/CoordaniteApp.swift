//
//  ViewController.swift
//  TamatemApp
//
//  Created by Rami Alaidy on 18/06/2023.
//

import UIKit

class CoordaniteApp{

    private let window: UIWindow

    init(_ window:UIWindow){
        self.window = window
    }

    func startLogin(){
        
        //This VC For Home Demo
        let loginVC = HomeViewController()
        let navigationController = UINavigationController(rootViewController: loginVC)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

    }
}


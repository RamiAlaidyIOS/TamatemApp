//
//  HomeViewController.swift
//  TamatemApp
//
//  Created by Rami Alaidy on 18/06/2023.
//

import UIKit

class HomeViewController: UIViewController {

//    static func instantiate() -> HomeViewController{
//        let storyboard = UIStoryboard(name: "Main", bundle: .main)
//        let vc = storyboard.instantiateInitialViewController() as! HomeViewController
//        return vc
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func OpenBrowserBtnAction(_ sender: UIButton){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WebPageViewController") as! WebPageViewController
        vc.title = "Tamatem WebView"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

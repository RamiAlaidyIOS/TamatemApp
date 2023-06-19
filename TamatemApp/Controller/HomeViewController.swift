//
//  HomeViewController.swift
//  TamatemApp
//
//  Created by Rami Alaidy on 18/06/2023.
//

import UIKit

class HomeViewController: UIViewController {

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

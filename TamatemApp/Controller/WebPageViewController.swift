//
//  WebPageViewController.swift
//  TamatemApp
//
//  Created by Rami Alaidy on 18/06/2023.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController {

    var RefrshImage = UIImage(systemName: "goforward")
    var forwardImage = UIImage(systemName: "forward.fill")

    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(webView)

        guard let url = URL(string: "https://tamatemplus.com")else{
            return
        }
        webView.load(URLRequest(url: url))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // add web view to view bounds
        webView.frame = view.bounds

        // add Navigation Right Bar Button
        RefrshImage = RefrshImage?.withRenderingMode(.alwaysOriginal)
        forwardImage = forwardImage?.withRenderingMode(.alwaysOriginal)

        self.navigationItem.rightBarButtonItems = [

            UIBarButtonItem(
                image: forwardImage,
                style:.plain,
                target: self,
                action: #selector(onClickForwardButton)
            ),

            UIBarButtonItem(
                image:RefrshImage,
                style:.plain,
                target: self,
                action: #selector(onClickRefrshButton)
            )
        ]
    }

    @objc func onClickForwardButton() {
        print("Forward")
    }

    @objc func onClickRefrshButton() {
        // web view Reload and Refresh 
        webView.reload()
        print("Refrsh")
    }
}

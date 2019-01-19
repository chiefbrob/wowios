//
//  ViewController.swift
//  WOW ME
//
//  Created by Jack Greenly on 28/12/2018.
//  Copyright © 2018 Eldoret Artisans. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webview: WKWebView!
    
    override func loadView(){
        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://salon.dininghall.xyz")
        webview.load(URLRequest(url: url!))
    }


}


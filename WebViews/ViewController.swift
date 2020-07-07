//
//  ViewController.swift
//  WebViews
//
//  Created by Manoli on 07/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import UIKit
import SafariServices
import WebKit

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let url = URL(string: "https://beta.apple.com") {
            webView.load(URLRequest(url: url))
        }
    }

    @IBAction func openSafariViewControllerButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://beta.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            safariViewController.delegate = self
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("finished!")
    }
    
    // Open full Safari application on system level
    @IBAction func openSafariButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://beta.apple.com") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

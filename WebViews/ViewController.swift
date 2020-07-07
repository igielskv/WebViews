//
//  ViewController.swift
//  WebViews
//
//  Created by Manoli on 07/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openSafariButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://beta.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
}


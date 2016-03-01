//
//  ViewController.swift
//  MathJaxTest01
//
//  Created by Tibor Simon on 20/02/16.
//  Copyright © 2016 Tibor Simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSBundle.mainBundle().bundlePath
        let baseURL = NSURL.fileURLWithPath(path)
        
        let myHTML = "<!DOCTYPE html><html><head><title>MathJax TeX Test Page</title><script type=\"text/javascript\" async  src=\"MathJax-2.6.1/MathJax.js?config=TeX-AMS_CHTML\"></script></head><body>  <div style=\"font-size: 30pt; color: #eee;\">    $$    \\begin{equation}      \\prod_{\\substack{                1\\le i \\le n\\\\                1\\le j \\le m}}         M_{i,j}    \\end{equation}$$  </div></body></html>"
        myWebView.loadHTMLString(myHTML, baseURL:baseURL)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


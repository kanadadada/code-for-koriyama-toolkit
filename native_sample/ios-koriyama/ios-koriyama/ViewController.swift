//
//  ViewController.swift
//  ios-koriyama
//
//  Created by Isao Kono on 2015/02/19.
//  Copyright (c) 2015年 isaoeka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate{
    
    @IBOutlet weak var webview: UIWebView!
    var targetURL = NSBundle.mainBundle().pathForResource("html/lesson-4", ofType: "html")!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadAddressURL()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func loadAddressURL() {
        let requestURL = NSURL(string: targetURL)
        let req = NSURLRequest(URL: requestURL!)
        
        webview.loadRequest(req)
    }

    func webView(webView: UIWebView!, shouldStartLoadWithRequest request: NSURLRequest!, navigationType: UIWebViewNavigationType) -> Bool {
        
        return true
    }

}


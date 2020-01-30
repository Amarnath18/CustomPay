//
//  ViewController.swift
//  customPayment
//
//  Created by Amarnath on 30/01/20.
//  Copyright © 2020 apoxeo. All rights reserved.
//

import UIKit
import Razorpay
import WebKit

class ViewController: UIViewController, RazorpayPaymentCompletionProtocol, WKNavigationDelegate {
    
    func onPaymentSuccess(_ payment_id: String, andData response: [AnyHashable : Any]) {
            
    }
    
    func onPaymentError(_ code: Int32, description str: String, andData response: [AnyHashable : Any]) {
        
    }
    

var webView: WKWebView!
var razorpay: Razorpay!
 
override func viewDidLoad() {
    super.viewDidLoad()
    self.webView = WKWebView(frame: self.view.frame)
    self.razorpay = Razorpay.initWithKey("rzp_test_6lcowvhwf98TuW", andDelegate: self, withPaymentWebView: self.webView)
    self.view.addSubview(self.webView)
    
    
}

    
}


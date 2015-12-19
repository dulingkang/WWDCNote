//
//  ViewController.swift
//  NewInSwift
//
//  Created by dulingkang on 15/12/19.
//  Copyright © 2015年 dulingkang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Option Sets
        var viewAnimationOptions: UIViewAnimationOptions = [.Repeat, .CurveEaseIn, .TransitionCurlUp]
        viewAnimationOptions = []
        if viewAnimationOptions.contains(.TransitionCurlUp) {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


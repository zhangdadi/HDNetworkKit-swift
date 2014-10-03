//
//  ViewController.swift
//  HDPhone
//
//  Created by 张达棣 on 14-9-29.
//  Copyright (c) 2014年 张达棣. All rights reserved.
//

import UIKit
import HDService
import HDNetworkKit

class ViewController: UIViewController, HDNetCtrlDelegate {
    let car = DCDataCtrl_carList()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        car.delegate = self;
    }

    @IBAction func buttonClick(sender: AnyObject) {
        car.refresh()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func netCtrlProgress(ctrl: HDNetDataModel) {
        println("netCtrlProgress")
    }
    
    func netCtrlUpdate(ctrl: HDNetDataModel) {
        println("netCtrlUpdate")
    }

}


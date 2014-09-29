//
//  CarList.swift
//  demoPhone
//
//  Created by 张达棣 on 14-8-3.
//  Copyright (c) 2014年 HD. All rights reserved.
//

import UIKit
import HDNetWorkKit

class DCDataCarList: DCDataObject {
   
}

class DCDataCarListParam: NSObject {
    var par1: String? = "11"
    var par2: Int? = 22
}

class DCDataCtrlCarList: DCDataControl {
    var data: DCDataCarList?
    var param = DCDataCarListParam()
    
    override func dataRequest() {
//        autoRequest(urlSuffix: "http://www.baidu.com")
//        var request = HDNetHTTPRequest()
//        var url = NSURL(string: "http://www.baidu.com")
//        request.destURL = url
//        request.queue = QueueSingleton.shareInstance()
//        self.netRequest = request
        
    }
    
    override func dataProcess(data: NSData?, updateDate: NSDate)  {
        debugPrintln("dataProcess")
        outputData(nil)
    }
}


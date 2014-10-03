//
//  CarList.swift
//  demoPhone
//
//  Created by 张达棣 on 14-8-3.
//  Copyright (c) 2014年 HD. All rights reserved.
//

import UIKit
import HDNetworkKit

public class DCData_carListObj: DCDataObject {
   
}

public class DCData_carListParam: NSObject {
    var par1: String? = "11"
    var par2: Int? = 22
}

public class DCDataCtrl_carList: DCDataControl {
    public var data: DCData_carListObj?
    public var param = DCData_carListParam()
    
    override func dataRequest() {
        autoRequest(urlSuffix: "http://www.baidu.com", mutiPart: nil)
    }
    
    override func dataProcess(data: NSData?, updateDate: NSDate)  {
        debugPrintln("dataProcess")
        var obj = DCData_carListObj()
        obj.updateDate = updateDate
        outputData(obj)
    }
}


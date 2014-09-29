//
//  DCDataModel.swift
//  demoPhone
//
//  Created by 张达棣 on 14-8-3.
//  Copyright (c) 2014年 HD. All rights reserved.
//

import UIKit
import HDNetworkKit

class DCDataObject: HDNetDataObject {
    var code: Int = 0
    var errorMessage: String?
}

class DCDataControl: HDNetDataControl {
    
    func setupCacheByTag() {
        
    }
    
    func setupCacheByTime() {
        
    }
    
    //子类重写的方法
    func dataRequest() {
        assert(false, "子类没有重写dataRequest")
    }
    
    //子类重写的方法
    func dataProcess(data: NSData?, updateDate: NSDate) {
        assert(false, "子类没有重写dataProcess")
    }
    
    func autoRequest(#urlPrefix: String, urlSuffix: String) {
//        var request = HDNetHTTPRequest()
//        var url = NSURL(string: urlPrefix + urlSuffix)
//        request.destURL = url
//        request.queue = QueueSingleton.shareInstance()
////        request.multipartDict
//        
//        
//        self.netRequest = request
    }
    func autoRequest(#urlSuffix: String) {
        autoRequest(urlPrefix: "", urlSuffix: urlSuffix)
    }
    
    func _autoInitParam() {
        var multipartDict: Dictionary<String, HDNetHTTPMutipartDataFormItem>?
        
    }
    
//-____________________________________________________________________
//    final override func createRequest() {
//        dataRequest()
//    }
//    
//    final override func processResponse() {
//        if netError != nil {
//            //error
//            
//        } else {
//            dataProcess(netRequest?.responseData, updateDate: NSDate())
//        }
//    }
}


class DCDataPageControl: HDNetDataPageControl {
    //子类重写的方法
//    func dataRequest() {
//        assert(false, "子类没有重写dataRequest")
//    }
//    
//    //子类重写的方法
//    func dataProcess(data: NSData?, updateDate: NSDate) {
//        assert(false, "子类没有重写dataProcess")
//    }
//    
//    final override func createRequest() {
//        dataRequest()
//    }
//    
//    final override func processResponse() {
//        if netError != nil {
//            //error
//            
//        } else {
//            dataProcess(netRequest?.responseData, updateDate: NSDate())
//        }
//    }
}

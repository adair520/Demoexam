//
//  Decode andEncode24ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/26.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import CryptoSwift

class Decode_andEncode24ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //bytes转Data
        let data = Data(bytes: [0x01, 0x02, 0x03])
        print(data)
        
        //Data转bytes
        let bytes1 = data.bytes
        
        //使用十六进制编码的形式建立字节数组
        let bytes2 = Array<UInt8>(hex: "0x010203")  // [1,2,3]
        
        //将字节数组转换为对应的十六进制编码
        let hex = bytes2.toHexString()  // "010203"
        
        let bytes3: Array<UInt8> = "password".bytes
        //字节数组的base64编码
        let bytes4:[UInt8] = [1, 2, 3]
        let base64String1 = bytes4.toBase64() //AQID
        
        //字符串的base64编码
        let string1 = "hangge.com"
        let base64String2 = string1.bytes.toBase64() //aGFuZ2dlLmNvbQ==
        print(data,bytes1,bytes2,hex,bytes3,bytes4,base64String1!,string1,base64String2!)
    }
    
    
        
}

//
//  Network1203ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/28.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import Alamofire

class Network1203ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ///1、上传
        let upBtn = UIButton(frame: CGRect(x: 20, y: 100, width: 100, height: 44))
        upBtn.setTitle("上传", for: UIControl.State())
        upBtn.backgroundColor = UIColor.yellow
        upBtn.addTarget(self, action: #selector(Network1203ViewController.upLoad), for: .touchUpInside)
        self.view.addSubview(upBtn)
        ///1、下载
        let downBtn = UIButton(frame: CGRect(x: 20, y: 200, width: 100, height: 44))
        downBtn.setTitle("下载", for: UIControl.State())
        downBtn.backgroundColor = UIColor.lightGray
        downBtn.addTarget(self, action: #selector(Network1203ViewController.downLoad), for: .touchUpInside)
        self.view.addSubview(downBtn)
    }
    @objc func upLoad(){
        let fileURL = Bundle.main.url(forResource: "ake", withExtension: "png")
        Alamofire.upload(fileURL!, to: "http://127.0.0.1")
            .uploadProgress(closure: { (progress) in //注意该闭包在主线程执行该uploadProgress
                print("完成比例\(progress.fractionCompleted)")
                print("当前完成\(progress.completedUnitCount)")
                print("总共大小\(progress.totalUnitCount)")
            })
            .validate()
            .responseJSON { (response) in
                DispatchQueue.main.async {
                   print("上传结果\(response.result)")
                   let message = "上传结果\(response.result)"
                   let alert = UIAlertController(title: "Information", message: message, preferredStyle: .alert)
                   let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                   alert.addAction(okAction)
                   self.present(alert, animated: true, completion: nil)
                }
        }
        
    }
    @objc func downLoad(){
        let destination = DownloadRequest.suggestedDownloadDestination(for: .documentDirectory)
        Alamofire.download("http://127.0.0.1/图片",to:destination)
            .downloadProgress { progress in
                print("完成比例\(progress.fractionCompleted)")
                print("当前完成\(progress.completedUnitCount)")
                print("总共大小\(progress.totalUnitCount)")
                
        }
            .responseData { response in
                if let data = response.result.value{
                    let image = UIImage(data: data)
                    self.view.addSubview(UIImageView.init(image: image))
                }
                let message = "下载图片结果:\(response.result)"
                let alert = UIAlertController(title: "Information", message: message, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
        }
        
        
        
        
    }

}

//
//  Operation15ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Operation15ViewController: UIViewController {
   var topImageView = UIImageView()
   var footImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        topImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 320, height: 280))
        self.view.addSubview(topImageView)
        footImageView = UIImageView(frame: CGRect(x: 0, y: 280, width:320 , height: 290))
        self.view.addSubview(footImageView)
        
        let downloadA = getOperation(name: "下载线程A", imageUrl: "http://img1.3lian.com/2015/w12/28/d/101.jpg", isTopOne: true)
        
        let downloadB = getOperation(name: "下载线程B", imageUrl: "http://img1.3lian.com/2015/a1/149/d/75.jpg", isTopOne: false)
        
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        queue.addOperation(downloadA)
        queue.addOperation(downloadB)
        
        for operation in queue.operations{
            print("Operation名称:"+operation.name!)
        }

    }
    
    func getOperation(name : String, imageUrl : String, isTopOne : Bool) -> BlockOperation{
        let download = BlockOperation(block: {
            let url = URL(string: imageUrl)
            var data : Data!
            do{
                Thread.sleep(forTimeInterval: 1.0)
                try data = Data(contentsOf: url!)
                let image = UIImage(data: data)
                if isTopOne{
                    self.perform(#selector(Operation15ViewController.showTopImage), on: Thread.main, with: image, waitUntilDone: true)
                }
                else{
                    self.perform(#selector(Operation15ViewController.showFootImage), on: Thread.main, with: image, waitUntilDone: true)
                }
            }catch{
                print("下载图片失败。")
            }
        })
        download.name = name
        return download
    }
    
   @objc func showTopImage(image : UIImage){
        self.topImageView.image = image
    }
    
    @objc func showFootImage(image : UIImage){
        self.footImageView.image = image
    }
    

}

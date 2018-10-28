//
//  Thred15ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/9/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Thred15ViewController: UIViewController {
    var imageView = UIImageView()
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(frame: CGRect(x: 0, y: 260, width: 320, height: 300))
        imageView.backgroundColor = UIColor.purple
        self.view.addSubview(imageView)
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        label.backgroundColor = UIColor.white
        label.textAlignment = .center
        label.text = "Loading"
        label.font = UIFont.systemFont(ofSize: 42)
        self.view.addSubview(label)
        startdownload()
    }
    func startdownload(){
        let imageUrl = "http://img1.3lian.com/2015/w2/52/d/101.jpg"
        let thread = Thread(target: self, selector: #selector(Thred15ViewController.downloadImage), object: imageUrl)
        thread.start()
    }
    
    @objc func downloadImage(path:String){
        let url = URL(string: path)
        var data:Data!
        do {
            try data = Data(contentsOf: url!)
            let image = UIImage(data: data)
            self.perform(#selector(Thred15ViewController.showImage), on: Thread.main, with: image, waitUntilDone: true)
        } catch {
            print("下载图片失败")
        }
        
    }
    @objc func showImage(image:UIImage){
        self.imageView.image = image
        self.label.isHidden = true
    }
    
}

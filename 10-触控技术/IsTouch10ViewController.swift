//
//  IsTouch10ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/10/2.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class IsTouch10ViewController: UIViewController {
    var imageView : UIImageView!
    var isTouchInImageView : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView = UIImageView(frame: CGRect(x:0, y: 60, width: 200, height: 200))
        let image = UIImage(named: "Star")
        imageView.image = image
        self.view.addSubview(imageView)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchPoint = touch?.location(in: self.view)
        
        let imageViewFrame = imageView.frame
        let minX = imageViewFrame.origin.x
        let minY = imageViewFrame.origin.y
        let maxX = minX + imageViewFrame.size.width
        let maxY = minY + imageViewFrame.size.height
        if (touchPoint?.x)! >= minX && (touchPoint?.y)! <= maxX && (touchPoint?.y)! >= minY && (touchPoint?.y)! <= maxY
        {
            isTouchInImageView = true;
            let acertVC = UIAlertController(title: "点击", message: "您获得一枚星星", preferredStyle: .alert)
            let action = UIAlertAction(title: "星星", style: .default, handler: nil)
            acertVC.addAction(action)
            self.present(acertVC, animated: true, completion: nil)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !isTouchInImageView{
            return
        }
        let touch = touches.first
        let touchPoint = touch?.location(in: self.view)
        let touchPrePoint = touch?.previousLocation(in: self.view)
        let disX = (touchPoint?.x)! - (touchPrePoint?.x)!
        let disY = (touchPoint?.y)! - (touchPrePoint?.y)!
        
        var centerPoint = imageView.center
        centerPoint.x += disX
        centerPoint.y += disY
        imageView.center = centerPoint
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTouchInImageView = false;
    }
    
}

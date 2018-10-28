//
//  MoveTouchViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/10/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class MoveTouchViewController: UIViewController {
    var imageView : UIImageView!
    var isTouchInImageView : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(frame: CGRect(x:0, y: 60, width: 200, height: 200))
        let image = UIImage(named: "Star")
        imageView.image = image
        self.view.addSubview(imageView)
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
        var centerPoint = self.imageView.center
        centerPoint.x += disX
        centerPoint.y += disY
        self.imageView.center = centerPoint
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTouchInImageView = false
    }

}

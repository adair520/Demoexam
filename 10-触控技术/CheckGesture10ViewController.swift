//
//  CheckGesture10ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/17.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class CheckGesture10ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.isMultipleTouchEnabled = true
        checkGesture()

    }
    func checkGesture(){
        
        // 点击手势
        let tapGesture = UITapGestureRecognizer(target: self, action: "handleTapGesture:")
        tapGesture.numberOfTapsRequired = 2  // 点击次数
        self.view.addGestureRecognizer(tapGesture)
        
        // 捏手势
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: "handlePinchGesture:")
        self.view.addGestureRecognizer(pinchGesture)
        
        // 旋转手势
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: "handleRotateGesture:")
        self.view.addGestureRecognizer(rotateGesture)
        
        // 滑动手势: 默认为右滑
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: "handleSwipeGesture:")
        swipeGesture.direction = .down //.Left .Down .Up .Right
        self.view.addGestureRecognizer(swipeGesture)
        
        //    // 拖动手势: 与滑动手势冲突，二者选其一
        //    let panGesture = UIPanGestureRecognizer(target: self, action: "handlePanGesture:")
        //    self.view.addGestureRecognizer(panGesture)
        
        // 长按手势
        let longpressGestrue = UILongPressGestureRecognizer(target: self, action: "handleLongPressGesture:")
        longpressGestrue.minimumPressDuration = 1
        longpressGestrue.numberOfTouchesRequired = 1
        longpressGestrue.allowableMovement = 15
        self.view.addGestureRecognizer(longpressGestrue)
    }

    
   @objc func handleTapGesture(sender: UITapGestureRecognizer) {
        let acertVC = UIAlertController(title: "点击", message: "啥", preferredStyle: .alert)
        let action = UIAlertAction(title: "什么", style: .default, handler: nil)
        acertVC.addAction(action)
    }
    
   @objc func handlePinchGesture(sender: UIPinchGestureRecognizer) {
//        print("handlePinchGesture")
//        let factor = sender.scale
//        print("factor", factor)
//        if factor > 1 { // 放大
//            imgView.transform = CGAffineTransformMakeScale(lastScaleFactor + factor - 1, lastScaleFactor + factor - 1)
//        } else { // 缩小
//            imgView.transform = CGAffineTransformMakeScale(lastScaleFactor * factor, lastScaleFactor * factor)
//        }
//        if sender.state == UIGestureRecognizerState.Ended {
//            if factor > 1 {
//                lastScaleFactor = lastScaleFactor + factor - 1
//            } else {
//                lastScaleFactor = lastScaleFactor * factor
//            }
//        }
    }
    
   @objc func handleRotateGesture(sender: UIRotationGestureRecognizer) {
//        print("handleRotateGesture")
//        let rotation = sender.rotation
//        print("rotation", rotation)
//        imgView.transform = CGAffineTransformMakeRotation(rotation + netRotation)
//        if sender.state == UIGestureRecognizerState.Ended {
//            netRotation += rotation
//        }
    }
    
  @objc  func handleSwipeGesture(sender: UISwipeGestureRecognizer) {
        print("handleSwipeGesture")
    }
    
  @objc func handlePanGesture(sender: UIPanGestureRecognizer) {
//        print("UIPanGestureRecognizer")
//        let translation = sender.translationInView(imgView)
//        imgView.transform = CGAffineTransformMakeTranslation(netTranslation.x + translation.x, translation.y + netTranslation.y)
//        if sender.state == UIGestureRecognizerState.Ended {
//            netTranslation.x += translation.x
//            netTranslation.y += translation.y
//        }
    }
    
   @objc func handleLongPressGesture(sender: UILongPressGestureRecognizer) {
//        print("handleLongPressGesture")
//        if sender.state == UIGestureRecognizerState.Began {
//            print("----------")
//        }
        
    }

}

//
//  TouchCategory10ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/10/2.
//  Copyright © 2018年 adairwang. All rights reserved.
//
/*
 UITapGestureRecognizer：“点击”手势，可以设置点击的次数
 UIPinchGestureRecognizer：“捏合”手势，比如可以用来改变图片大小
 UIPanGestureRecognizer：“滑动”手势，可以识别拖拽或移动动作
 UISwipeGestureRecognizer： “轻扫”手势，手指从屏幕上轻划过
 UIRotationGestureRecognizer： “旋转”手势，两指转动
 UILongPressGestureRecognizer： “长按”手势
*/
import UIKit

class TouchCategory10ViewController: UIViewController {
    var imgView : UIImageView!
    var lastScaleFactor : CGFloat! = 1  //放大、缩小
    var netRotation : CGFloat = 1;//旋转
    var netTranslation : CGPoint!//平移
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView = UIImageView(frame: CGRect(x:0, y: 60, width: 200, height: 200))
        let image = UIImage(named: "Star")
        imgView.image = image
        self.view.addSubview(imgView)
        
        // 1.点击手势
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TouchCategory10ViewController.handleTapGesture))
        tapGesture.numberOfTapsRequired = 1  // 点击次数
        self.view.addGestureRecognizer(tapGesture)
        
        // 2.捏手势
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(TouchCategory10ViewController.handlePinchGesture))
        self.view.addGestureRecognizer(pinchGesture)
        
        // 3.旋转手势
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: Selector(("handleRotateGesture:")))
        self.view.addGestureRecognizer(rotateGesture)
        
        // 4.滑动手势: 默认为右滑
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: Selector(("handleSwipeGesture:")))
        swipeGesture.direction = .down //.Left .Down .Up .Right
        self.view.addGestureRecognizer(swipeGesture)
        
        // //拖动手势: 与滑动手势冲突，二者选其一
        // let panGesture = UIPanGestureRecognizer(target: self, action: "handlePanGesture:")
        // self.view.addGestureRecognizer(panGesture)
        
        
        // 5.长按手势
        let longpressGestrue = UILongPressGestureRecognizer(target: self, action: Selector(("handleLongPressGesture:")))
        longpressGestrue.minimumPressDuration = 1
        longpressGestrue.numberOfTouchesRequired = 1
        longpressGestrue.allowableMovement = 15
        self.view.addGestureRecognizer(longpressGestrue)
    }
 
    @objc func handleTapGesture() {
        let acertVC = UIAlertController(title: "点击", message: "啥", preferredStyle: .alert)
        let action = UIAlertAction(title: "什么", style: .default, handler: nil)
        acertVC.addAction(action)
        self.present(acertVC, animated: true, completion: nil)
    }
    
    @objc func handlePinchGesture(sender: UIPinchGestureRecognizer) {
                print("handlePinchGesture")
                let factor = sender.scale
                print("factor", factor)
                if factor > 1 { // 放大
                    imgView.transform = CGAffineTransform(scaleX: lastScaleFactor + factor - 1, y: lastScaleFactor + factor - 1)
                } else { // 缩小
                    imgView.transform = CGAffineTransform(scaleX: lastScaleFactor * factor, y: lastScaleFactor * factor)
                }
                if sender.state == UIGestureRecognizerState.ended {
                    if factor > 1 {
                        lastScaleFactor = lastScaleFactor + factor - 1
                    } else {
                        lastScaleFactor = lastScaleFactor * factor
                    }
                }
    }
    
    @objc func handleRotateGesture(sender: UIRotationGestureRecognizer) {
                print("handleRotateGesture")
                let rotation = sender.rotation
                print("rotation", rotation)
                imgView.transform = CGAffineTransform(rotationAngle: rotation + netRotation)
                if sender.state == UIGestureRecognizerState.ended {
                    netRotation += rotation
                }
    }
    
    @objc  func handleSwipeGesture(sender: UISwipeGestureRecognizer) {
              print("handleSwipeGesture")
    }
    
    @objc func handlePanGesture(sender: UIPanGestureRecognizer) {
                print("UIPanGestureRecognizer")
                let translation = sender.translation(in: imgView)
                 imgView.transform = CGAffineTransform(translationX: netTranslation.x + translation.x, y: translation.y + netTranslation.y)
                 if sender.state == UIGestureRecognizerState.ended {
                    netTranslation.x += translation.x
                    netTranslation.y += translation.y
                }
    }
    
    @objc func handleLongPressGesture(sender: UILongPressGestureRecognizer) {
                print("handleLongPressGesture")
                if sender.state == UIGestureRecognizerState.began {
                    print("----------")
                }
        
    }

}

/*
 import UIKit
 
 class ViewController: UIViewController, UIActionSheetDelegate {
 
 @IBOutlet var im: UIImageView!
 var lastScaleFactor : CGFloat! = 1  //放大、缩小
 var netRotation : CGFloat = 1;//旋转
 var netTranslation : CGPoint!//平移
 var images : NSArray = ["meinv1.jpg","mv2.jpg","mv3.jpg","mv4.jpg","mv5.jpg","mv6.jpg"]// 图片数组
 var imageIndex : Int = 0 //数组下标
 
 
 required init(coder aDecoder: NSCoder) {
 super.init(coder: aDecoder)
 netTranslation = CGPoint(x: 0, y: 0)
 }
 
 override func viewDidLoad() {
 super.viewDidLoad()
 
 
 var tapGesture = UITapGestureRecognizer(target: self, action: "handleTapGesture:")
 //设置手势点击数,双击：点2下
 tapGesture.numberOfTapsRequired = 2
 self.view.addGestureRecognizer(tapGesture)
 
 //手势为捏的姿势:按住option按钮配合鼠标来做这个动作在虚拟器上
 var pinchGesture = UIPinchGestureRecognizer(target: self, action: "handlePinchGesture:")
 self.view.addGestureRecognizer(pinchGesture)
 
 //旋转手势:按住option按钮配合鼠标来做这个动作在虚拟器上
 var rotateGesture = UIRotationGestureRecognizer(target: self, action: "handleRotateGesture:")
 self.view.addGestureRecognizer(rotateGesture)
 
 //拖手势
 var panGesture = UIPanGestureRecognizer(target: self, action: "handlePanGesture:")
 //        self.view.addGestureRecognizer(panGesture)
 
 //划动手势
 //右划
 var swipeGesture = UISwipeGestureRecognizer(target: self, action: "handleSwipeGesture:")
 self.view.addGestureRecognizer(swipeGesture)
 //左划
 var swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: "handleSwipeGesture:")
 swipeLeftGesture.direction = UISwipeGestureRecognizerDirection.Left //不设置是右
 self.view.addGestureRecognizer(swipeLeftGesture)
 
 //长按手势
 var longpressGesutre = UILongPressGestureRecognizer(target: self, action: "handleLongpressGesture:")
 //长按时间为1秒
 longpressGesutre.minimumPressDuration = 1
 //允许15秒运动
 longpressGesutre.allowableMovement = 15
 //所需触摸1次
 longpressGesutre.numberOfTouchesRequired = 1
 self.view.addGestureRecognizer(longpressGesutre)
 }
 
 override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()
 // Dispose of any resources that can be recreated.
 }
 
 //双击屏幕时会调用此方法,放大和缩小图片
 func handleTapGesture(sender: UITapGestureRecognizer){
 //判断imageView的内容模式是否是UIViewContentModeScaleAspectFit,该模式是原比例，按照图片原时比例显示大小
 if im.contentMode == UIViewContentMode.ScaleAspectFit{
 //把imageView模式改成UIViewContentModeCenter，按照图片原先的大小显示中心的一部分在imageView
 im.contentMode = UIViewContentMode.Center
 }else{
 im.contentMode = UIViewContentMode.ScaleAspectFit
 }
 }
 
 //捏的手势，使图片放大和缩小，捏的动作是一个连续的动作
 func handlePinchGesture(sender: UIPinchGestureRecognizer){
 var factor = sender.scale
 if factor > 1{
 //图片放大
 im.transform = CGAffineTransformMakeScale(lastScaleFactor+factor-1, lastScaleFactor+factor-1)
 }else{
 //缩小
 im.transform = CGAffineTransformMakeScale(lastScaleFactor*factor, lastScaleFactor*factor)
 }
 //状态是否结束，如果结束保存数据
 if sender.state == UIGestureRecognizerState.Ended{
 if factor > 1{
 lastScaleFactor = lastScaleFactor + factor - 1
 }else{
 lastScaleFactor = lastScaleFactor * factor
 }
 }
 }
 
 //旋转手势
 func handleRotateGesture(sender: UIRotationGestureRecognizer){
 //浮点类型，得到sender的旋转度数
 var rotation : CGFloat = sender.rotation
 //旋转角度CGAffineTransformMakeRotation,改变图像角度
 im.transform = CGAffineTransformMakeRotation(rotation+netRotation)
 //状态结束，保存数据
 if sender.state == UIGestureRecognizerState.Ended{
 netRotation += rotation
 }
 }
 //拖手势
 func handlePanGesture(sender: UIPanGestureRecognizer){
 //得到拖的过程中的xy坐标
 var translation : CGPoint = sender.translationInView(im)
 //平移图片CGAffineTransformMakeTranslation
 im.transform = CGAffineTransformMakeTranslation(netTranslation.x+translation.x, netTranslation.y+translation.y)
 if sender.state == UIGestureRecognizerState.Ended{
 netTranslation.x += translation.x
 netTranslation.y += translation.y
 }
 }
 //划动手势
 func handleSwipeGesture(sender: UISwipeGestureRecognizer){
 //划动的方向
 var direction = sender.direction
 //判断是上下左右
 switch (direction){
 case UISwipeGestureRecognizerDirection.Left:
 println("Left")
 imageIndex++;//下标++
 break
 case UISwipeGestureRecognizerDirection.Right:
 println("Right")
 imageIndex--;//下标--
 break
 case UISwipeGestureRecognizerDirection.Up:
 println("Up")
 break
 case UISwipeGestureRecognizerDirection.Down:
 println("Down")
 break
 default:
 break;
 }
 //得到不越界不<0的下标
 imageIndex = imageIndex < 0 ? images.count-1:imageIndex%images.count
 //imageView显示图片
 im.image = UIImage(named: images[imageIndex] as String)
 }
 
 //长按手势
 func handleLongpressGesture(sender : UILongPressGestureRecognizer){
 
 if sender.state == UIGestureRecognizerState.Began{
 //创建警告
 var actionSheet = UIActionSheet(title: "Image options", delegate: self, cancelButtonTitle: "cancel", destructiveButtonTitle: "ok", otherButtonTitles: "other")
 actionSheet.showInView(self.view)
 }
 }
 }
 
 */

//
//  PageViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/6/20.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class  PageViewController:UIViewController,UIScrollViewDelegate {
    
    var scrollView = UIScrollView()
    var pageControl = UIPageControl()
    var isPageControlUsed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "滚动视图"
        
        var screenFrame = UIScreen.main.bounds
        let screenWidth = screenFrame.size.width
        let screenHeight = screenFrame.size.height
        
        scrollView.frame = screenFrame
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.contentSize = CGSize(width: screenWidth*2, height: screenHeight)
        scrollView.backgroundColor = UIColor.brown
        scrollView.delegate = self
        let pcHeight:CGFloat = 50.0
        let pcRect = CGRect(x: 0, y: screenHeight-pcHeight, width: screenWidth, height: pcHeight)
        pageControl.frame = pcRect
        pageControl.numberOfPages = 2
        pageControl.currentPage = 0
        pageControl.backgroundColor = UIColor.gray
        pageControl.addTarget(self, action: #selector(PageViewController.pageControlDidChanged), for: UIControl.Event.valueChanged)
        let firstController = FirstViewController()
        screenFrame.origin.x = 0
        firstController.view.frame = screenFrame
        
        let secondController = SecondViewController()
        screenFrame.origin.x = screenFrame.size.width
        secondController.view.frame = screenFrame

        scrollView.addSubview(firstController.view)
        scrollView.addSubview(secondController.view)
       
        self.view.addSubview(scrollView)
        self.view.addSubview(pageControl)
        
    }
   @objc func pageControlDidChanged(_sender:AnyObject){
        let  ctrPage = (CGFloat)(pageControl.currentPage)
        var frame = scrollView.frame
         frame.origin.x = frame.size.width*ctrPage
         frame.origin.y = 0
         scrollView.scrollRectToVisible(frame, animated: true)
         isPageControlUsed = true
    
    }
   @objc func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if !isPageControlUsed {
        let pageWidth = scrollView.frame.size.width
        let page = floor((scrollView.contentOffset.x - pageWidth/2)/pageWidth) + 1
        pageControl.currentPage = Int(page)
        
    }
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        isPageControlUsed = false
    }
    

}

//
//  CourseTableViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/9.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import Highlightr


class CourseTableViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupleftbtn()
        setuprightbtn()
        
        
    }
    
    func setupUI(){
        //使用highlightr将代码着色成相应的NSAttributedString
        let highlightr = Highlightr()!
        highlightr.setTheme(to: "paraiso-dark")  //设置渲染主题
        //从文件中读取代码内容
        let file = Bundle.main.path(forResource: "swift3.0", ofType: "rtf")!
        let code = try! String.init(contentsOfFile: file)
        let highlightedCode = highlightr.highlight(code, as: "swift")
        
        //创建一个textView用于显示代码
        let textView = UITextView(frame: self.view.frame)
        textView.isEditable = false  //只读
        self.view.addSubview(textView)
        
        //设置显示内容
        textView.attributedText = highlightedCode
        
        //根据主题同步改变UI配色
        textView.backgroundColor = highlightr.theme.themeBackgroundColor
        if let navBar = self.navigationController?.navigationBar {
            navBar.barTintColor = highlightr.theme.themeBackgroundColor
            navBar.tintColor = invertColor(navBar.barTintColor!)
            navBar.titleTextAttributes = [.foregroundColor: navBar.tintColor ?? ""]
        }
    }
    //获取反色
    func invertColor(_ color: UIColor) -> UIColor {
        var r:CGFloat = 0, g:CGFloat = 0, b:CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        return UIColor(red:1.0-r, green: 1.0-g, blue: 1.0-b, alpha: 1)
    }
 
    
    
    func setupleftbtn(){
        let leftitem = UIBarButtonItem(title: "电子书", style: .plain, target: self, action: #selector(CourseTableViewController.openleftebookVC))
        self.navigationItem.leftBarButtonItem = leftitem
        
    }
    
    func setuprightbtn(){
        let rightitem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(CourseTableViewController.openRightebookVC))

        rightitem.title = "其他版本"
        self.navigationItem.rightBarButtonItem = rightitem
        
    }
    @objc func openleftebookVC(){
        self.navigationController?.pushViewController(EbookViewController()
            , animated: true)
    }
    @objc func openRightebookVC(){
        
    }
}



//
//  EbookViewController.swift
//  Demoexam
//
//  Created by adairwang on 2019/3/23.
//  Copyright © 2019 adairwang. All rights reserved.
//

import UIKit

class EbookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "语法教程"
        let path = Bundle.main.path(forResource: "swift3中文版", ofType: "pdf")
        let url = URL.init(fileURLWithPath: path!)
        let data = try!Data(contentsOf: url)
        let webview = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        webview.load(data, mimeType: "application/pdf", textEncodingName: "utf-8", baseURL: NSURL() as URL)
        self.view.addSubview(webview)
    }
}

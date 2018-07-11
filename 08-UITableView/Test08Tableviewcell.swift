//
//  Test08Tableviewcell.swift
//  
//
//  Created by adairwang on 2018/7/11.
//

import UIKit

class Test08Tableviewcell: UITableViewCell {
    var imageview:UIImageView!
    var title:UILabel!
    var detail:UIButton!
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.imageview = UIImageView(image: UIImage(named: "mine"))
        self.imageview.center = CGPoint(x: 30, y: 22)
        self.title = UILabel(frame: CGRect(x: 80, y: 0, width: 120, height: 40))
        self.title.text = "自定义单元格"
        self.detail = UIButton(frame: CGRect(x: 240, y: 8, width: 60, height: 24))
        self.detail.setTitle("详情", for: UIControlState())
        self.detail.backgroundColor = UIColor.gray
        self.detail.addTarget(self, action: #selector(Test08Tableviewcell.showdetail), for: .touchUpInside)
        self.addSubview(self.imageview)
        self.addSubview(self.title)
        self.addSubview(self.detail)
    }
   @objc func showdetail(){
        print("详细信息")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
        
}

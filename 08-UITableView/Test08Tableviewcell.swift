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
    var detail:UILabel!
    var clickbtn:UIButton!
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.imageview = UIImageView(image: UIImage(named: "mine"))
        self.imageview.center = CGPoint(x: 10, y: 10)
        self.imageview.backgroundColor = UIColor.yellow
        
        self.title = UILabel(frame: CGRect(x: 60, y: 10, width: 100, height: 30))
        self.title.backgroundColor = UIColor.brown
        self.detail = UILabel(frame: CGRect(x: 60, y: 50, width: 100, height: 30))
        self.detail.backgroundColor = UIColor.orange
        self.clickbtn = UIButton(frame: CGRect(x: self.frame.size.width-100, y:10, width: 100, height: 100))
        self.clickbtn.addTarget(self, action: #selector(Test08Tableviewcell.showdetail), for: .touchUpInside)
        self.addSubview(self.imageview)
        self.addSubview(self.title)
        self.addSubview(self.detail)
        self.addSubview(clickbtn)
    }
   @objc func showdetail(){
      let acert = UIAlertController(title: "自定义cell", message: "点击了", preferredStyle: .alert)
      let action = UIAlertAction(title: "自定义", style: .default, handler: nil)
      acert.addAction(action)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
        
}

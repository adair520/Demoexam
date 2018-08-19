//
//  Test09CollectionViewCell.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/12.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test09CollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.frame = CGRect(x: 0, y: 0, width: 150, height: 135)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

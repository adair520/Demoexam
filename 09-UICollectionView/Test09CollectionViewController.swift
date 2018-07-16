//
//  Test09CollectionViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/5.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test09CollectionViewController: UIViewController {
    var btnnumbers = [String]()
    var collectionview:UICollectionView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 50)
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 30
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        collectionview = UICollectionView.init()
    }

}

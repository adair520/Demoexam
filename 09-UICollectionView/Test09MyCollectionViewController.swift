//
//  Test09MyCollectionViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/14.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class Test09MyCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(Test09CollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.init(red: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), green: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(arc4random())/CGFloat(RAND_MAX)), alpha: 0.5)
      
    
        return cell
    }

}

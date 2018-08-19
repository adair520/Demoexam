//
//  Test09CollectionViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/7/5.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class Test09CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
      let cellID = "reusedCell"
    var images = ["collectionviewcell01","collectionviewcell02","collectionviewcell03","collectionviewcell04","collectionviewcell05","collectionviewcell06"]
    var collectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "流水视图"
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: 155, height: 135)
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 5
        flowLayout.minimumInteritemSpacing = 0.1
        //let collectionView = UICollectionView(frame: CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-20))
        //collectionView.collectionViewLayout = flowLayout
        
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-20), collectionViewLayout: flowLayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: cellID)
        self.view.addSubview(collectionView)
        
        //添加自定义collectionviewcell
        self.navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target:self, action: #selector(Test09CollectionViewController.openmycollectionviewcell))
        
    }
    //导航右按钮
    @objc func openmycollectionviewcell(){
        self.navigationController?.pushViewController(Test09MyCollectionViewController(), animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //let cellID = "reusedCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        let imageview:UIImageView? = cell.viewWithTag(1) as? UIImageView
        if (imageview == nil) {
            let image = UIImage(named: images[indexPath.row])
            let imageview = UIImageView(image: image)
           imageview.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
           imageview.layer.opacity = 0.5
           imageview.tag = 1
            cell.addSubview(imageview)
        }else{
            imageview?.image = UIImage(named: images[indexPath.row])
        }
       
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        let imageview = cell?.viewWithTag(1)
        imageview?.layer.opacity = 1.0
        
    }

}

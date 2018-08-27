//
//  Video11ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/19.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import AVFoundation

class Video11ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let moivePath = Bundle.main.path(forResource: "movie", ofType: "mp4")
       let moiveURL  = URL(fileURLWithPath:moivePath!)
       let avPlayer = AVPlayer(url: moiveURL)
       let avPlayerLayer = AVPlayerLayer(player: avPlayer)
       avPlayerLayer.frame = self.view.bounds
       avPlayerLayer.videoGravity = .resizeAspectFill
       self.view.layer.addSublayer(avPlayerLayer)
       avPlayer.play()
       
    }

}

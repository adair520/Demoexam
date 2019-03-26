//
//  Radio11ViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/8/19.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class Radio11ViewController: UIViewController,AVAudioPlayerDelegate {
    var audioplayer:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    func setupView(){
        self.title = "音频效果"
        //设置导航栏右按钮显示源代码
        let itemcode = UIBarButtonItem(title: "源码", style: .plain, target: self, action: #selector(TestViewController.showcode))
        self.navigationItem.rightBarButtonItem = itemcode
        //初始化界面
        let button1 = UIButton(type: .system)
        button1.frame  = CGRect(x: 20, y: 500, width: 100, height: 24)
        button1.backgroundColor = UIColor.black
        button1.setTitle("短音播放", for: UIControl.State())
        button1.addTarget(self, action: #selector(Radio11ViewController.shortRadioPlay), for: .touchUpInside)
        self.view.addSubview(button1)
        let button2 = UIButton(type: .system)
        button2.frame  = CGRect(x: (UIScreen.main.bounds.size.width-30)/2, y: 500, width: 100, height: 24)
        button2.backgroundColor = UIColor.black
        button2.setTitle("长音播放", for: UIControl.State())
        button2.addTarget(self, action: #selector(Radio11ViewController.longRadioPlay), for: .touchUpInside)
        self.view.addSubview(button2)
    }
    //显示源代码
    @objc func showcode(){
        let textcodevc = UIViewController()
        let textcode = UITextField(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        textcode.backgroundColor = UIColor.black
        textcode.text = "源代码文本对象"
        textcodevc.view.addSubview(textcode)
        self.navigationController?.pushViewController(textcodevc, animated: true)
    }
    //system sound services实现短音播放
    @objc func shortRadioPlay(){
        var _soundID:SystemSoundID = 0
        let path = Bundle.main.path(forResource: "Lament of Valkyrie", ofType: "mp3")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &_soundID)
        AudioServicesAddSystemSoundCompletion(_soundID, nil, nil, { (_soundID, clientData) in
            print("重复播放")
        }, nil)
        AudioServicesPlaySystemSound(_soundID)
        
        
    }
    //AVAudioplayer实现长音播放
    @objc func longRadioPlay(){
        let path = Bundle.main.path(forResource: "Myriad", ofType: "mp3")
        let soundurl = URL(fileURLWithPath: path!)
        do {
            try audioplayer = AVAudioPlayer(contentsOf: soundurl)
            audioplayer.volume = 1
            audioplayer.numberOfLoops = -1
            audioplayer.delegate = self
            audioplayer.play()
            
        } catch  {
            print(error)
        }
        
        let stopMusic = UIButton(frame: CGRect(x: 20, y: 80, width: 280, height: 44))
        stopMusic.backgroundColor = UIColor.purple
        stopMusic.setTitle("暂停/恢复", for: .init(rawValue: 0))
        stopMusic.addTarget(self, action: #selector(Radio11ViewController.stopMusic), for: .touchUpInside)
        self.view.addSubview(stopMusic)
    }
    @objc func stopMusic(){
        if self.audioplayer.isPlaying {
            self.audioplayer.pause()
        }else{
            self.audioplayer.play()
        }
    }
    func audioPlayerBeginInterruption(_ player: AVAudioPlayer) {
        print("音乐被打断")
    }
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("音乐播放完毕")
    }
    

}

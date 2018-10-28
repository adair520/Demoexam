//
//  3DTouchViewController.swift
//  Demoexam
//
//  Created by adairwang on 2018/10/2.
//  Copyright © 2018年 adairwang. All rights reserved.
//

import UIKit

class ThreeDTouchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    func threeD(){
    let addEventIcon = UIApplicationShortcutIcon(type: .add)
    let unlockEventIcon = UIApplicationShortcutIcon(templateImageName: "unlockEvent")
    let listEventIcon = UIApplicationShortcutIcon(templateImageName: "listEvent")
    
    let addEvent = UIApplicationShortcutItem(type: "com.coolketang.addMember", localizedTitle: "添加会员", localizedSubtitle: "Add Member", icon: addEventIcon, userInfo: nil)
    let unlockEvent = UIApplicationShortcutItem(type: "com.coolketang.unlockMember", localizedTitle: "解锁会员", localizedSubtitle: "Unlock Member", icon: unlockEventIcon, userInfo: nil)
    let listEvent = UIApplicationShortcutItem(type: "com.coolketang.memberList", localizedTitle: "会员列表", localizedSubtitle: "Members List", icon: listEventIcon, userInfo: nil)
    
    let shortCutItems = [addEvent, unlockEvent, listEvent]
   // application.shortcutItems = shortCutItems;
    print("跳转至添加会员页面。")
    //return true
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        if shortcutItem.type == "com.coolketang.addMember"{
            print("跳转至添加会员页面。")
        }
        else if shortcutItem.type == "com.coolketang.unlockMember"{
            print("跳转至解锁会员页面。")
        }
        else if shortcutItem.type == "com.coolketang.memberList"{
            print("跳转至会员列表页面。")
        }
    }

}

/*
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
 // Override point for customization after application launch.
 let addEventIcon = UIApplicationShortcutIcon(type: .add)
 let unlockEventIcon = UIApplicationShortcutIcon(templateImageName: "unlockEvent")
 let listEventIcon = UIApplicationShortcutIcon(templateImageName: "listEvent")
 
 let addEvent = UIApplicationShortcutItem(type: "com.coolketang.addMember", localizedTitle: "添加会员", localizedSubtitle: "Add Member", icon: addEventIcon, userInfo: nil)
 let unlockEvent = UIApplicationShortcutItem(type: "com.coolketang.unlockMember", localizedTitle: "解锁会员", localizedSubtitle: "Unlock Member", icon: unlockEventIcon, userInfo: nil)
 let listEvent = UIApplicationShortcutItem(type: "com.coolketang.memberList", localizedTitle: "会员列表", localizedSubtitle: "Members List", icon: listEventIcon, userInfo: nil)
 
 let shortCutItems = [addEvent, unlockEvent, listEvent]
 application.shortcutItems = shortCutItems;
 print("跳转至添加会员页面。")
 return true
 }
 
 func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
 if shortcutItem.type == "com.coolketang.addMember"{
 print("跳转至添加会员页面。")
 }
 else if shortcutItem.type == "com.coolketang.unlockMember"{
 print("跳转至解锁会员页面。")
 }
 else if shortcutItem.type == "com.coolketang.memberList"{
 print("跳转至会员列表页面。")
 }
 }
 */

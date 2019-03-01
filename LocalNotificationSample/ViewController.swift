//
//  ViewController.swift
//  LocalNotificationSample
//
//  Created by TakaoAtsushi on 2019/02/28.
//  Copyright © 2019 TakaoAtsushi. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func localNotification() {
        
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "あっちゃん"
        content.body = "テストだよ〜"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "SampleNotification", content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error != nil {
                print(error.debugDescription)
            } else {
                print("成功")
            }
        }
        
    }
    
    


}


//
//  ViewController.swift
//  AmazingSpeaker
//
//  Created by Metallic  on 17/8/5.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let speaker = SmartSpeaker()
        speaker.beginConversation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


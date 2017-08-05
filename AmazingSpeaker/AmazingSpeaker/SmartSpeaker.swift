//
//  SmartSpeaker.swift
//  AmazingSpeaker
//
//  Created by Metallic  on 17/8/5.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

import UIKit
import AVFoundation

class SmartSpeaker: NSObject {
    
    //MARK: - Properties
    
    let synthesizer = AVSpeechSynthesizer()
    
    lazy var voices = [ AVSpeechSynthesisVoice.init(language: "zh-CN"),
                        AVSpeechSynthesisVoice.init(language: "zh-HK") ]
    
    lazy var speechStrings = [ "我和你不再联系",
                               "希望你不要介意",
                               "要怪就怪当初没在一起",
                               "而你对现在也比较满意",
                               "所以我留下来也没有道理",
                               "我和你断了联系",
                               "不代表我不想你",
                               "走到哪里还是会有惦记",
                               "而我也开始试着去忘记",
                               "抹去我们过去的放弃的所有交集" ]
    
    //MARK: - Interface
    
    func beginConversation() {
        for (index, speechString) in speechStrings.enumerated() {
            let utterance = AVSpeechUtterance.init(string: speechString)
            //使用哪种语音播放
            utterance.voice = self.voices[index % 2]
            //播放速率
            utterance.rate = 0.4
            //声音的音调
            utterance.pitchMultiplier = 0.8
            //播放下一句语音之间的延迟
            utterance.postUtteranceDelay = 0.1;
            //播放语音
            synthesizer.speak(utterance)
        }
    }
}

//
//  Story.swift
//  Destini
//
//  Created by Ales Shenshin on 17/12/2018.
//  Copyright (c) 2018 Shenshin. All rights reserved.
//

import Foundation

class Story {
    var storyText: String
    var answers = Answer()
    init(_ storyText: String, _ answer1: String = "", _ story1: Int = 0, _ answer2: String = "", _ story2: Int = 0){
        self.storyText = storyText
        answers[0] = (answer1, story1)
        answers[1] = (answer2, story2)
        
    }


}

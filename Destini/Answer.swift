//
//  Answer.swift
//  Destini
//
//  Created by Ales Shenshin on 17/12/2018.
//  Copyright (c) 2018 Shenshin. All rights reserved.
//

import Foundation

class Answer {
    private var variants = [String]()
    private var stories = [Int]()
    
    subscript(_ variant: Int)->(String, Int) {
        get {
            return (variants[variant], stories[variant])
        }
        set {
            variants.append(newValue.0)
            stories.append(newValue.1)
        }
    }
}

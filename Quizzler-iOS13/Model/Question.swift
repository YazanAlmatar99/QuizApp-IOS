//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Yazan Almatar on 4/20/20.
//  Copyright © 2020 Yazan Almatar. All rights reserved.
//

import Foundation

struct Question {
    let text:String
    let answer:String
    init(q:String, a:String) {
        text = q
        answer = a
    }
}

//
//  question.swift
//  Quizzler-iOS13
//
//  Created by Arman Wirawan on 7/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    // because why do you want to change the constant? the wuestion and the asnwer you don't want to change them
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
    
}




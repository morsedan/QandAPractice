//
//  Question.swift
//  QandAPractice
//
//  Created by morse on 6/12/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let asker: String
    let questionText: String
    var answerer: String?
    var answer: String?
    
    init(asker: String, questionText: String, answerer: String? = nil, answer: String? = nil) {
        self.asker = asker
        self.questionText = questionText
        self.answerer = answerer
        self.answer = answer
    }
}

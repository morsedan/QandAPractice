//
//  QuestionController.swift
//  QandAPractice
//
//  Created by morse on 6/12/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    func createQuestion(asker: String, questionText: String) {
        let question = Question(asker: asker, questionText: questionText)
        
        questions.append(question)
    }
    
    func updateQuestion(question: Question, answerer: String?, answer: String?) {
        guard let questionIndex = questions.firstIndex(of: question) else { return }
        
        questions[questionIndex].answerer = answerer
        questions[questionIndex].answer = answer
    }
    
    func deleteQuestion(question: Question) {
        guard let questionIndex = questions.firstIndex(of: question) else { return }
        
        questions.remove(at: questionIndex)
    }
}

//
//  QuestionTableViewCell.swift
//  QandAPractice
//
//  Created by morse on 6/12/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askerLabel: UILabel!
    @IBOutlet var promptLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel.text = question.questionText
        askerLabel.text = question.asker
        
        if let answerer = question.answerer, let answer = question.answer {
            if !answerer.isEmpty && !answer.isEmpty {
                promptLabel.text = "Tap to view answer."
            } else {
                promptLabel.text = "Can you answer this?"
            }
        }
    }
}

//
//  AnswerViewController.swift
//  QandAPractice
//
//  Created by morse on 6/12/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askerLabel: UILabel!
    @IBOutlet var answererTextField: UITextField!
    @IBOutlet var answerTextView: UITextView!
    
    
    var questionController: QuestionController?
    var question: Question?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        navigationItem.title = question?.questionText
        questionLabel.text = question?.questionText
        askerLabel.text = question?.asker
        guard let answerer = question?.answerer, let answer = question?.answer else { return }
        answererTextField.text = answerer
        answerTextView.text = answer
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: Any) {
        guard let question = question else { return }
        let answerer = answererTextField.text
        let answer = answerTextView.text
        
        questionController?.updateQuestion(question: question, answerer: answerer, answer: answer)
        navigationController?.popViewController(animated: true)
    }
}

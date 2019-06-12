//
//  AskViewController.swift
//  QandAPractice
//
//  Created by morse on 6/12/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class AskViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var questionTextView: UITextView!
    
    var questionController: QuestionController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if let asker = nameTextField.text, let questionText = questionTextView.text, !asker.isEmpty, !questionText.isEmpty {
            questionController?.createQuestion(asker: asker, questionText: questionText)
            navigationController?.popViewController(animated: true)
        } else {
            print("No asker or questionText")
        }
    }
}

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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if let asker = nameTextField.text, let questionText = questionTextView.text, !asker.isEmpty, !questionText.isEmpty {
            questionController?.createQuestion(asker: asker, questionText: questionText)
            print(questionController?.questions)
            navigationController?.popViewController(animated: true)
        } else {
            print("No asker or questionText")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

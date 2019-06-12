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

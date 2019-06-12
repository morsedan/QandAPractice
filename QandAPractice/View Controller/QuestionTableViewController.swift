//
//  QuestionTableViewController.swift
//  QandAPractice
//
//  Created by morse on 6/12/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    let questionController = QuestionController()
    var questions: [Question] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let questionCell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionTableViewCell
        
        let question = questionController.questions[indexPath.row]
        questionCell.question = question

        return questionCell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            questionController.questions.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AskQuestion" {
            guard let askVC = segue.destination as? AskViewController else { return }
            askVC.questionController = self.questionController
        } else if segue.identifier == "AnswerQuestion" {
            guard let answerVC = segue.destination as? AnswerViewController else { return }
            
            guard let questionIndex = tableView.indexPathForSelectedRow?.row else { return }
            
            answerVC.questionController = self.questionController
            answerVC.question = questionController.questions[questionIndex]
        }
    }
}

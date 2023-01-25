//
//  ListOfQuestionsViewController.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 17/01/2023.
//

import UIKit

class ListOfQuestionsViewController: UIViewController {
    var quiz = QuizBrain()
    
    @IBOutlet weak var questionView: UITableView!
    
    //let questions = ["asasd", "asdd", "fff", "asdas", "asadsjkfnaj adsf asdf ads fadsf ads fads fasd fa df asdf asdf adsf a dfa ds"]
    
    //let questionn = quiz.Q
    override func viewDidLoad() {
        super.viewDidLoad()
        questionView.delegate = self
        questionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}

extension ListOfQuestionsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print (quiz.list.count)
        return quiz.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = questionView.dequeueReusableCell(withIdentifier: "OneQuestionTableViewCell") as! OneQuestionTableViewCell
        let question = quiz.list[indexPath.row]
        cell.oneQuestionText.text = question
        return cell
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



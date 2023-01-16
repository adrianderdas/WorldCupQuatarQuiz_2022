//
//  QuestionsViewController.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 14/01/2023.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    var quizBrain = QuizBrain()
    
    
    @IBOutlet weak var quizText: UILabel!
    
    @IBAction func selectedQuestion(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        
        let userGotItRight = quizBrain.
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

//
//  ResultViewController.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 16/01/2023.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var textScore: UILabel!
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textScore.text = "Your's score is \(quizBrain.finalScore())"
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

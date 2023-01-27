//
//  QuestionsViewController.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 14/01/2023.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        list = []
        updateUI()
    }
    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
 
    
    @IBAction func selectedQuestion(_ sender: UIButton) {
        
        print("\(quizBrain.questionNumber)")
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if quizBrain.questionNumber == quizBrain.quiz.count-1{
        
          self.performSegue(withIdentifier: "goToResult", sender: self)
          
            print("otwieraj")
        }
        
        else {
        
        }
        quizBrain.nextQuestion()
        updateUI()
        print("\(quizBrain.questionNumber)")
        
    }
    
    @objc func updateUI() {
        questionText.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.getAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
    
    }
}

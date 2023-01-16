//
//  QuizBrain.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 15/01/2023.
//

import Foundation

//var finalScore = 0

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Ile bramek zdobył Robert Lewandowski na mistrzostwach świata w 2022?", a: ["1","0","2"], correctAnswer: "2"),
        Question(q: "Ile karnych obronił Wojciech Szczęsny", a: ["1","0","2"], correctAnswer: "2")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    //    func finalScore() -> Int {
    //        return finalScore
    //    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if useranswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        }
        else {
            return false
        }
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
}

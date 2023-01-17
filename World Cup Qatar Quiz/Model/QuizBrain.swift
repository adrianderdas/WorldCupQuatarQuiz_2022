//
//  QuizBrain.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 15/01/2023.
//
import UIKit
import Foundation


var finalscore = 0

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    
    
    let quiz = [
        Question(q: "Ile bramek zdobył Robert Lewandowski na mistrzostwach świata w 2022?", a: ["1","0","2"], correctAnswer: "2"),
        Question(q: "Ile karnych obronił Wojciech Szczęsny", a: ["2","1","4"], correctAnswer: "2"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    mutating func finalScore() -> Int {
        return finalscore
    }
    
    func getProgress() -> Float {
        return (Float(questionNumber)+1) / Float(quiz.count)
    }
    
    //    func finalScore() -> Int {
    //        return finalScore
    //    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            //questionNumber = 0
            // questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            finalscore = score
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

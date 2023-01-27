//
//  QuizBrain.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 15/01/2023.
//
import UIKit
import Foundation


var finalscore = 0
var list:[String] = []
var icons:[String] = []

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Ile bramek zdobył Robert Lewandowski na mistrzostwach świata w 2022?", a: ["1","0","2"], correctAnswer: "2"),
        Question(q: "Ile karnych obronił Wojciech Szczęsny", a: ["2","1","4"], correctAnswer: "2"),
        Question(q: "asasasdasd", a: ["1", "2", "3"], correctAnswer: "Orange"),
        Question(q: "sadfasdfasdf", a: ["1", "2", "3"], correctAnswer: "1"),
        Question(q: "asdasd", a: ["1", "2", "3"], correctAnswer: "1"),
        Question(q: "brrrrr", a: ["1", "3", "2"], correctAnswer: "1")
    ]
    
    
    
    mutating func getQuestionText() -> String {
        list.append(quiz[questionNumber].text)
        print(list)
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
            icons.append("true_icon")
            score += 1
            finalscore = score
            return true
        }
        else {
            icons.append("false_icon")
            return false
        }
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
}

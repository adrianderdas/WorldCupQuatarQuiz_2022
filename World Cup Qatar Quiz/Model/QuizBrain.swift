//
//  QuizBrain.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 15/01/2023.
//
import UIKit
import Foundation


//legia to stara k

var finalscore = 0
var list:[String] = []
var icons:[String] = []

struct QuizBrain {
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Ile bramek zdobył Robert Lewandowski na mistrzostwach świata w 2022?", a: ["1","0","2"], correctAnswer: "2"),
        Question(q: "Ile rzutów karnych obronił Wojciech Szczęsny", a: ["2","1","4"], correctAnswer: "2"),
        Question(q: "Jakim wynikiem zakończyło się spotkanie Polska-Francja, które wyeliminowało Polskę z mistrzostw?", a: ["1-3", "1-2", "0-3"], correctAnswer: "1-3"),
        Question(q: "Z jaką drużyną Polska wygrała na mundialu?", a: ["z Meksykiem", "z Argentyną", "z Arabią Saudyjską"], correctAnswer: "z Arabią Saudyjską"),
        Question(q: "Wskaż współuczestników Polski w grupie C", a: ["Argentyna, Meksyk, Arabia Saudyjska", "Argentyna, Portugalia, Arabia Saudyjska", "Niemcy, Arabia Saudyjska, Brazylia"], correctAnswer: "Argentyna, Meksyk, Arabia Saudyjska"),
        Question(q: "Kto był selekcjonerem Polski podczas mistrzostw 2022?", a: ["Adam Nawałka", "Jerzy Brzęczek", "Czesław Michniewicz"], correctAnswer: "Czesław Michniewicz")
    ]
    
    
    
    mutating func getQuestionText() -> String {
        if list.count < quiz.count { list.append(quiz[questionNumber].text)
            return quiz[questionNumber].text
        }
        else {
            return quiz[questionNumber].text
        }
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

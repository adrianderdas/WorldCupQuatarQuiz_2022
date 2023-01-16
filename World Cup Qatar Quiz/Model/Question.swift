//
//  Question.swift
//  World Cup Qatar Quiz
//
//  Created by Adrian Derdaś on 15/01/2023.
//

import Foundation


struct Question {
    let text: String
    
    let answers: [String]
    
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}

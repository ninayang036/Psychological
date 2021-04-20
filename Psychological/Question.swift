//
//  Question.swift
//  Psychological
//
//  Created by Yang Nina on 2021/4/19.
//

import Foundation
class question {
    internal init(description: String, yesQuestion: Int, noQuestion: Int) {
        self.description = description
        self.yesQuestion = yesQuestion
        self.noQuestion = noQuestion
    }
    
    let description:String
    let yesQuestion:Int
    let noQuestion: Int
}

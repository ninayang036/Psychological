//
//  Select.swift
//  Psychological
//
//  Created by Yang Nina on 2021/4/19.
//

import Foundation
class select {
    internal init(text: String, nextQuestion: Int, final: Int) {
        self.text = text
        self.nextQuestion = nextQuestion
        self.final = final
    }
    
    let text:String
    let nextQuestion:Int
    let final:Int
}

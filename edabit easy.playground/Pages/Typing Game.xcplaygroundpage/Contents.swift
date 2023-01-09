//: [Previous](@previous)

import Foundation

//5. Typing Game

func correctStream(_ user: [String], _ correct: [String]) -> [Int] {
    var array = user
    var answer: [Int] = []
    var string: String
    for i in correct {
        string = array.removeFirst()
        if i == string {
            answer.append(1)
        } else {
            answer.append(-1)
        }
    }
    return answer
}
(correctStream(
    ["it", "is", "find"],
    ["it", "is", "fine"]
))
(correctStream(
    ["april", "showrs", "bring", "may", "flowers"],
    ["april", "showers", "bring", "may", "flowers"]
))

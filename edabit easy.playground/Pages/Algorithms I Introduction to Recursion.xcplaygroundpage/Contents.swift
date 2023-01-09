//: [Previous](@previous)

import Foundation

//1. Algorithms I: Introduction to Recursion

func factorial(_ num: Int) -> Int {
    let targetNumber = 1
    var x = num
    var y = num
    while x != targetNumber {
        x -= 1
        y *= x
    }
    return y
}
(factorial(5))
(factorial(3))
(factorial(2))

//: [Previous](@previous)

import Foundation

//2. Basic Calculator

enum CalculatorError: Error {
    case zeroDivision
}
func calculator(_ n: Int, _ op: String, _ m: Int) throws -> Int {
    if op == "+" {
        return n + m
    } else if op == "-" {
        return n - m
    } else if op == "*" {
        return n * m
    } else if op == "/" {
        if m == 0 {
            return 0
        } else {
            return n / m
        }
    } else {
        return 0
    }
}
(try calculator(2, "+", 2))
(try calculator(2, "*", 18))
(try calculator(2, "/", 0))

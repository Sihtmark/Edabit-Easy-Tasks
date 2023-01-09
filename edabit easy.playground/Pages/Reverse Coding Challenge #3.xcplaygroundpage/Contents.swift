//: [Previous](@previous)

import Foundation

// Reverse Coding Challenge #3

func mysteryFunc(_ arr: [Int], _ num: Int) -> [Int] {
    var newArr: [Int] = []
    var x: Int
    for integer in arr {
        x = integer % num
        newArr.append(x)
    }
    return newArr
}

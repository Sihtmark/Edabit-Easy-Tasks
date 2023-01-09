//: [Previous](@previous)

import Foundation

// Find the Odd Integer

// Create a function that takes an array and finds the integer which appears an odd number of times.

func findOdd(_ arr: [Int]) -> Int {
    var num: Int = 0
    for i in arr {
        if arr.filter({$0 == i }).count % 2 != 0 {num = i}
    }
    return num
}

findOdd([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5]) // ➞ -1

findOdd([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]) // ➞ 5

findOdd([10]) // ➞ 10

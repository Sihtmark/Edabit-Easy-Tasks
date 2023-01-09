//: [Previous](@previous)

import Foundation

//MARK: - Sum of Digits Between Two Numbers
/*
 Create a function that sums the total number of digits between two numbers, inclusive. For example, between the numbers 19 and 22 we have:
 19, 20, 21, 22
 (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19
 */
func sumDigits(_ a: Int, _ b: Int) -> Int {
    var array: [String] = []
    var array1: [Character] = []
    var c = a
    while c != b + 1 {
        array.append(String(c))
        c += 1
    }
    for i in array {
        i.map{array1.append($0)}
    }
    return array1.map{Int(String($0))!}.reduce(0, +)
}
sumDigits(7, 8) // 15
sumDigits(17, 20) // 29
sumDigits(10, 12) // 6

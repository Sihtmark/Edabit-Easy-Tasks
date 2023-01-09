//: [Previous](@previous)

import Foundation

//5. Phone Number Formatting

func formatPhoneNumber(_ numbers: [Int]) -> String {
    var array: [String] = []
    var string: String = ""
    for i in numbers {
        array.append(String(i))
    }
    array.insert("(", at: array.startIndex)
    array.insert(") ", at: array.index(before: 5))
    array.insert("-", at: array.index(before: 9))
    for i in array {
        string += i
    }
    return string
}
(formatPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))
(formatPhoneNumber([5, 1, 9, 5, 5, 5, 4, 4, 6, 8]))

var xy = 100.0
for _ in 1...600 {
    xy *= 1.01
}
(xy)

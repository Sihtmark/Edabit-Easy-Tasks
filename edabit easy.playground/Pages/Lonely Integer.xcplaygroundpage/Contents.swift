//: [Previous](@previous)

import Foundation

//5. Lonely Integer

func lonelyInteger(_ arr: [Int]) -> Int {
    let array1 = arr.filter { $0 < 0 }
    let array2 = arr.filter { $0 > 0 }
    let sum1 = array1.reduce(0, -)
    let sum2 = array2.reduce(0, +)
    return sum2 - sum1
}
(lonelyInteger([1, -1, 2, -2, 3]))
(lonelyInteger([-3, 1, 2, 3, -1, -4, -2]))
(lonelyInteger([-9, -105, -9, -9, -9, -9, 105]))

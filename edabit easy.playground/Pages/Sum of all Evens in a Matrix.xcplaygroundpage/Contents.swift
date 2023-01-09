//: [Previous](@previous)

import Foundation

//12. Sum of all Evens in a Matrix

func sumOfEvens(_ arr: [[Int]]) -> Int {
    let array = arr
    var newArray: [Int] = []
    for i in array {
        for e in i {
            if e.isMultiple(of: 2) {
                newArray.append(e)
            }
        }
    }
    var x: Int = 0
    for a in newArray {
        x += a
    }
    return x
}
(sumOfEvens([
    [1, 0, 2],
    [5, 5, 7],
    [9, 4, 3]
]))
(sumOfEvens([
    [1, 1],
    [1, 1]
]))
(sumOfEvens([
    [42, 9],
    [16, 8]
]))
(sumOfEvens([
    [],
    [],
    []
]))

//: [Previous](@previous)

import Foundation

//1. Count Ones in a 2D Array

func countOnes(_ matrix: [[Int]]) -> Int {
    var count = 0
    let x = Array(matrix.joined())
    var array: [String] = []
    for i in x { array.append(String(i)) }
    for i in array {
        if i == "1" {
            count += 1
        }
    }
    return count
}
(countOnes([
    [1, 0],
    [0, 0]
]))
(countOnes([
    [1, 1, 1],
    [0, 0, 1],
    [1, 1, 1]
]))
(countOnes([
    [1, 2, 3],
    [0, 2, 1],
    [5, 7, 33]
]))

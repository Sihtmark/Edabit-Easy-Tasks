//: [Previous](@previous)

import Foundation

//6. X and Y Coordinates
func convertCartesian(_ x: [Int], _ y: [Int]) -> [[Int]] {
    var array: [[Int]] = []
    for (Xses, Yses) in zip(x, y) {
        array.append([Xses, Yses])
    }
    return array
}
(convertCartesian([1, 5, 3, 3, 4], [5, 8, 9, 1, 0]))
(convertCartesian([9, 8, 3], [1, 1, 1]))

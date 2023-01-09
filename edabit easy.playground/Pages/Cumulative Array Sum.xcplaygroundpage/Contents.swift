//: [Previous](@previous)

import Foundation

//7. Cumulative Array Sum

func cumulativeSum(_ arr: [Int]) -> [Int] {
    var varArr = arr
    let arrCount = arr.count
    var removeFirstArr = varArr.removeFirst()
    var anserCumulativeSum: [Int] = []
    for _ in 1...arrCount {
        anserCumulativeSum.append(removeFirstArr)
        if varArr != [] {
            removeFirstArr += varArr.removeFirst()
        }
    }
    return anserCumulativeSum
}
(cumulativeSum([1, 2, 3, 4]))
(cumulativeSum([1, -2, 3]))
(cumulativeSum([3, 3, -2, 408, 3, 3]))

//: [Previous](@previous)

import Foundation

//3. Find the Largest Numbers in a Group of Arrays

func findLargestNums(_ arr: [[Double]]) -> [Double] {
    var array: [Double] = []
    for i in arr {
        array.append(i.max() ?? 0)
    }
    return array
}
(findLargestNums([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]))
(findLargestNums([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]]))
(findLargestNums([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]]))

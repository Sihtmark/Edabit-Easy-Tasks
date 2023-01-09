//: [Previous](@previous)

import Foundation

// Even Odd Partition

func evenOddPartition(_ arr: [Int]) -> [[Int]] {
    let простыеЧисла = arr.filter { $0 % 2 == 0}
    let сложныеЧисла = arr.filter { $0 % 2 == 1}
    let newArr = [простыеЧисла, сложныеЧисла]
    return newArr
}
evenOddPartition([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])

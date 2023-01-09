//: [Previous](@previous)

import Foundation

//1. Find the Second Largest Number

func secondLargest(_ arr: [Int]) -> Int {
    let array = arr.sorted()
    let x = array.endIndex
    return array[x-2]
}
(secondLargest([10, 40, 30, 20, 50]))
(secondLargest([25, 143, 89, 13, 105]))
(secondLargest([54, 23, 11, 17, 10]))

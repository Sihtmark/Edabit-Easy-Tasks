//: [Previous](@previous)

import Foundation

//2. Sort Numbers in Ascending Order

func sortNumsAcending(_ arr: [Int]?) -> [Int] {
    return arr?.sorted() ?? []
}
(sortNumsAcending([1, 2, 10, 50, 5]))
(sortNumsAcending(nil))
(sortNumsAcending([80, 29, 4, -95, -24, 85]))

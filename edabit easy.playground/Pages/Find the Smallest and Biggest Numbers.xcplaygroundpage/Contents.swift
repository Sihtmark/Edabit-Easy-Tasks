//: [Previous](@previous)

import Foundation

//2. Find the Smallest and Biggest Numbers
func minMax(_ arr: [Double]) -> [Double] {
    let x = arr.min() ?? 0
    let y = arr.max() ?? 0
    return [x, y]
}
(minMax([1, 2, 3, 4, 5]))
(minMax([2334454, 5]))
(minMax([1]))

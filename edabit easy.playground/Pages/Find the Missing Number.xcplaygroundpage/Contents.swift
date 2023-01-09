//: [Previous](@previous)

import Foundation

//3. Find the Missing Number
func missingNum(_ arr: [Int]) -> Int {
    let set: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    return set.reduce(0, +) - arr.reduce(0, +)
}
(missingNum([1, 2, 3, 4, 6, 7, 8, 9, 10]))
(missingNum([7, 2, 3, 6, 5, 9, 1, 4, 8]))
(missingNum([10, 5, 1, 2, 4, 6, 8, 3, 9]))

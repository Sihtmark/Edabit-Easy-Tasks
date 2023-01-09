//: [Previous](@previous)

import Foundation

//5. Transform into an Array with No Duplicates

func setify(_ arr: [Int]) -> [Int] {
    let asdf = Set(arr).sorted()
    return Array(asdf)
    }
(setify([1, 3, 3, 5, 5]))
(setify([4, 4, 4, 4]))
(setify([5, 7, 8, 9, 10, 15]))
(setify([3, 3, 3, 2, 1]))

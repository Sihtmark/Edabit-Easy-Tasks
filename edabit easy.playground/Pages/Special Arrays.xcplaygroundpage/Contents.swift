//: [Previous](@previous)

import Foundation

// Special Arrays
func isSpecialArray(_ arr: [Int]) -> Bool {
    var oddArr = [Int]()
    var evenArr = [Int]()
    for (index, element) in arr.enumerated() {
        if index % 2 == 1 {
            oddArr.append(element)
        }
        if index % 2 == 0 {
            evenArr.append(element)
        }
    }
return oddArr
    .map{$0 % 2 == 1}
    .contains(false) == false && evenArr
    .map{$0 % 2 == 0}
    .contains(false) == false
}
isSpecialArray([2, 7, 4, 9, 6, 1, 6, 3])
isSpecialArray([2, 7, 9, 1, 6, 1, 6, 3])
isSpecialArray([2, 7, 8, 8, 6, 1, 6, 3])

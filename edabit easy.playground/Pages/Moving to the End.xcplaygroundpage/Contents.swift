//: [Previous](@previous)

import Foundation

//MARK: Moving to the End

// Write a function that moves all elements of one type to the end of the array.

func moveToEnd(_ arr: [Int], _ el: Int) -> [Int] {
    return (arr.filter{$0 != el} + arr.filter{$0 == el})
}

moveToEnd([1, 3, 2, 4, 4, 1], 1) // ➞ [3, 2, 4, 4, 1, 1]
// Move all the 1s to the end of the array.

moveToEnd([7, 8, 9, 1, 2, 3, 4], 9) // ➞ [7, 8, 1, 2, 3, 4, 9]

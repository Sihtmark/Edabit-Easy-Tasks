//: [Previous](@previous)

import Foundation

// Exists a Number Higher?

// Write a function that returns true if there exists at least one number that is larger than or equal to n.

func existsHigher(_ arr: [Int], _ n: Int) -> Bool {
    return arr.filter{$0 >= n}.count > 0
}

existsHigher([5, 3, 15, 22, 4], 10) // ➞ true

existsHigher([1, 2, 3, 4, 5], 8) // ➞ false

existsHigher([4, 3, 3, 3, 2, 2, 2], 4) // ➞ true

existsHigher([], 5) // ➞ false

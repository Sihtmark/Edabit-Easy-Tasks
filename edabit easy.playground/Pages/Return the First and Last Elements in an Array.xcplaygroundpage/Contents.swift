//: [Previous](@previous)

import Foundation

// Return the First and Last Elements in an Array

// Create a function that takes an array of values and returns the first and last values in a new array.

func firstLast(_ arr: [Any]) -> [Any] {
    return [arr.first!, arr.last!]
}

firstLast([5, 10, 15, 20, 25]) // ➞ [5, 25]

firstLast(["edabit", 13, false, true]) // ➞ ["edabit", true]

firstLast(["hello", "edabit", "dot", "com"]) // ➞ ["hello", "com"]

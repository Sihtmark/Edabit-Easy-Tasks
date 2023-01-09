//: [Previous](@previous)

import Foundation

// Longest Sequence of Consecutive Zeroes

// Write a function that returns the longest sequence of consecutive zeroes in a binary string.

func longestZero(_ str: String) -> String {
    return str.components(separatedBy: "1").max()!
}
longestZero("01100001011000")
longestZero("100100100")
longestZero("11111")

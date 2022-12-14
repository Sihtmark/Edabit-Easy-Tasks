//: [Previous](@previous)

import Foundation

// Hamming Distance

/*
 Hamming distance is the number of characters that differ between two strings.

 To illustrate:

 String1: "abcbba"
 String2: "abcbda"

 Hamming Distance: 1 - "b" vs. "d" is the only difference.
 Create a function that computes the hamming distance between two strings.
 */

func hammingDistance(_ str1: String, _ str2: String) -> Int {
    return zip(Array(str1), Array(str2)).filter{$0 != $1}.count
}

hammingDistance("abcde", "bcdef") // ➞ 5

hammingDistance("abcde", "abcde") // ➞ 0

hammingDistance("strong", "strung") // ➞ 1

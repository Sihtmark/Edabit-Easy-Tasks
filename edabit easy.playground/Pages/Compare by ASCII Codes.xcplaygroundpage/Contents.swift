//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//MARK: - Compare by ASCII Codes

//Create a function that compares two words based on the sum of their ASCII codes and returns the word with the smaller ASCII sum.

func asciiSort(_ arr: [String]) -> String {
    return arr[0].map{ String($0).unicodeScalars.first!.value }.reduce(0,+) >
    arr[1].map{ String($0).unicodeScalars.first!.value }.reduce(0,+) ? arr[1] : arr[0]
}

asciiSort(["hey", "man"]) // ➞ "man"
// ["h", "e", "y"] ➞ sum([104, 101, 121]) ➞ 326
// ["m", "a", "n"] ➞ sum([109, 97, 110]) ➞ 316

asciiSort(["majorly", "then"]) // ➞ "then"

asciiSort(["victory", "careless"]) // ➞ "victory"


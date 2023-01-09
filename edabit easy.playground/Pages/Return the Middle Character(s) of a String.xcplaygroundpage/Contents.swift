//: [Previous](@previous)

import Foundation

// Return the Middle Character(s) of a String

// Create a function that takes a string and returns the middle character(s). If the word's length is odd, return the middle character. If the word's length is even, return the middle two characters.

func getMiddle(_ str: String) -> String {
    var x = str
    if x.count > 2 {
        x.removeFirst()
        x.removeLast()
    }
    return String(x)
}

getMiddle("test") // ➞ "es"

getMiddle("testing") // ➞ "t"

getMiddle("middle") // ➞ "dd"

getMiddle("A") // ➞ "A"

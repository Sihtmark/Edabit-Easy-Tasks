//: [Previous](@previous)

import Foundation

// Char-to-ASCII

// Create a function that returns the ASCII value of the passed in character.

func ctoa(_ char: String) -> Int {
    return Int(Character(char).asciiValue!)
}
ctoa("A") // ➞ 65

ctoa("m") // ➞ 109

ctoa("[") // ➞ 91

ctoa("\\") // ➞ 92

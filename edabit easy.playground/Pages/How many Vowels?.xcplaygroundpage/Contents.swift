//: [Previous](@previous)

import Foundation

// How many Vowels?

func countVowels(_ str: String) -> Int {
    var count = 0
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    for character in str {
        for vowel in vowels {
            if vowel == character {
                count += 1
            }
        }
    }
    return count
}
countVowels("Celebration")
countVowels("Palm")
countVowels("Prediction")

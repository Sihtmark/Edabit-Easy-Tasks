//: [Previous](@previous)

import Foundation

// Reverse the Order of Words with Five Letters or More

// Write a function that takes a string of one or more words as an argument and returns the same string, but with all five or more letter words reversed. Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

func reverse(_ str: String) -> String {
    return str
        .components(separatedBy: " ")
        .map{$0.count < 5 ? String($0) : String($0.reversed())}
        .joined(separator: " ")
}

reverse("Reverse") // ➞ "esreveR"

reverse("This is a typical sentence.") // ➞ "This is a lacipyt .ecnetnes"

reverse("The dog is big.") // ➞ "The dog is big."

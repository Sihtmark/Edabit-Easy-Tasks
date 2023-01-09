//: [Previous](@previous)

import Foundation

// Prefixes vs. Suffixes

/*
Create two functions: isPrefix(word, prefixer-) and isSuffix(word, -suffixer).

isPrefix should return true if it begins with the prefix argument.
isSuffix should return true if it ends with the suffix argument.
Otherwise return false.
*/

func isPrefix(_ word: String, _ prefixer: String) -> Bool {
    return word.hasPrefix(prefixer.replacingOccurrences(of: "-", with: ""))
}

func isSuffix(_ word: String, _ suffixer: String) -> Bool {
    return word.hasSuffix(suffixer.replacingOccurrences(of: "-", with: ""))
}

isPrefix("automation", "auto-") // ➞ true

isSuffix("arachnophobia", "-phobia") // ➞ true

isPrefix("retrospect", "sub-") // ➞ false

isSuffix("vocation", "-logy") // ➞ false

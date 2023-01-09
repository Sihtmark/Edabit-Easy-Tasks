//: [Previous](@previous)

import Foundation

//9. Vowel Replacer
func replaceVowels(_ str: String, _ char: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
    let replaced = String(str.map { vowels.contains($0) ? Character("\(char)") : $0 } )
    return replaced
}
(replaceVowels("the aardvark", "#"))
(replaceVowels("minnie mouse", "?"))
(replaceVowels("shakespeare", "*"))

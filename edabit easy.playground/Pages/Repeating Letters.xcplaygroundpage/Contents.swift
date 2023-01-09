//: [Previous](@previous)

import Foundation

//4. Repeating Letters

func doubleChar(_ str: String) -> String {
    var array: [Character] = []
    for character in str {
        array.append(character)
        array.append(character)
    }
    return String(array)
}
(doubleChar("String"))
(doubleChar("Hello World!"))
(doubleChar("1234!_ "))

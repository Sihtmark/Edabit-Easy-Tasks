//: [Previous](@previous)

import Foundation

//8. Array from Comma-Delimited String
func toArray(_ str: String) -> [String] {
    let array = str.components(separatedBy: ", ")
    return array
}
(toArray("watermelon, raspberry, orange"))
(toArray("x1, x2, x3, x4, x5"))
(toArray("a, b, c, d"))
(toArray(""))

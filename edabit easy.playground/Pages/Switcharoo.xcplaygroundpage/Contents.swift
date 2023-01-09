//: [Previous](@previous)

import Foundation

//1. Switcharoo

func flipEndChars(_ str: String) -> String {
    var z = str
    let w = str.count
    if w <= 2 {
        return "Incompatible."
    } else {
        let x: Character = str[str.startIndex]
        let y: Character = str[str.index(before: str.endIndex)]
        z.remove(at: z.startIndex)
        z.remove(at: z.index(before: z.endIndex))
        if x == y {
            return "Two's a pair."
        } else {
            return "\(String(y))\(z)\(String(x))"
        }
    }
}
(flipEndChars("Cat, dog, and mouse."))
(flipEndChars("ada"))
(flipEndChars("z"))

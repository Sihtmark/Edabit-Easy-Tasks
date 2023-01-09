//: [Previous](@previous)

import Foundation

// Check if a String Contains only Identical Characters

func isIdentical(_ s: String) -> Bool {
    var x = 0
    let y: Character = s[s.startIndex]
    for character in s {
        if character == y {
            x += 1
        } else if character != y {
            continue
        }
    }
    if x == s.count {
        return true
    } else {
        return false
    }
}
(isIdentical("aaaaaa"))
(isIdentical("aabaaa"))
(isIdentical("ccccca"))
(isIdentical("kk"))

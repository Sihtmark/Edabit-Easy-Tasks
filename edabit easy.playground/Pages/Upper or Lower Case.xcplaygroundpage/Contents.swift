//: [Previous](@previous)

import Foundation

//9. Upper or Lower Case

func stepsToConvert(_ str: String) -> Int {
    var x = 0
    var y = 0
    for i in str {
        if i.isLowercase {
            x += 1
        } else if i.isUppercase {
            y += 1
        }
    }
    if x < y {
        return x
    } else {
        return y
    }
}
(stepsToConvert("abC"))
(stepsToConvert("abCBA"))
(stepsToConvert("aba"))
(stepsToConvert("abaCCC"))

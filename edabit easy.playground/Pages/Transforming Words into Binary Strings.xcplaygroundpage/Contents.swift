//: [Previous](@previous)

import Foundation

//6. Transforming Words into Binary Strings

func convertBinary(_ str: String) -> String {
    var vbn: [Character] = []
    let abc: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    let nop: [Character] = ["n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    for i in str {
        if abc.contains(i) {
            vbn.append("0")
        } else if nop.contains(i) {
            vbn.append("1")
        } else {
        }
    }
    return String(vbn)
}
(convertBinary("house"))
(convertBinary("excLAIM"))
(convertBinary("moon"))


//: [Previous](@previous)

import Foundation

//4. H4ck3r Sp34k
func hackerSpeak(_ str: String) -> String {
    let string1 = str.replacingOccurrences(of: "a", with: "4")
    let string2 = string1.replacingOccurrences(of: "e", with: "3")
    let string3 = string2.replacingOccurrences(of: "i", with: "1")
    let string4 = string3.replacingOccurrences(of: "o", with: "0")
    let string = string4.replacingOccurrences(of: "s", with: "5")
    return string
}
(hackerSpeak("javascript is cool"))
(hackerSpeak("programming is fun"))
(hackerSpeak("become a coder"))

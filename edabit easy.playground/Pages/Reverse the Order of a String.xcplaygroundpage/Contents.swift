//: [Previous](@previous)

import Foundation

//2. Reverse the Order of a String
func reverce(_ str: String) -> String {
    return String(str.map{$0}.reversed())
}
reverce("Hello World")
reverce("The quick brown fox.")
reverce("Edabit is really helpful!")

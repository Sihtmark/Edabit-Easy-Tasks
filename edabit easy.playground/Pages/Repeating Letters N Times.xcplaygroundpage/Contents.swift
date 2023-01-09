//: [Previous](@previous)

import Foundation

// Repeating Letters N Times
func repeating(_ str: String, _ n: Int) -> String {
    return str.map{String(repeating: $0, count: n)}.joined()
}
repeating("Sergei", 5)

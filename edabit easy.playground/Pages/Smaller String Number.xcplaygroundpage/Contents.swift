//: [Previous](@previous)

import Foundation

// Smaller String Number

func smallerNum(_ n1: String, _ n2: String) -> String {
    let N1 = Int(n1) ?? 0
    let N2 = Int(n2) ?? 0
    if N1 > N2 {
        return n1
    } else {
        return n2
    }
}

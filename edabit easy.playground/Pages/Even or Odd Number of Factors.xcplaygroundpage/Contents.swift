//: [Previous](@previous)

import Foundation

// Even or Odd Number of Factors
func factorGroup(_ num: Int) -> String {
    let x = String(num).map{Int(String($0))!}.reduce(1,*)
    return x % 2 == 0 ? "odd" : "even"
}
factorGroup(33)
factorGroup(36)
factorGroup(7)

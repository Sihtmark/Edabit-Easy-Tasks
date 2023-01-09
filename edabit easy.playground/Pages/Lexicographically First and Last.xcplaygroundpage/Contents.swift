//: [Previous](@previous)

import Foundation

//2. Lexicographically First and Last

func firstAndLast(_ s: String) -> [String] {
    let array: [Character] = s.sorted()
    let yarra: [Character] = s.sorted(by: >)
    let x = [String(array), String(yarra)]
    return x
}
(firstAndLast("marmite"))
(firstAndLast("bench"))
(firstAndLast("scoop"))

//: [Previous](@previous)

import Foundation

//2. A Redundand Function
func redundand(_ s: String) -> () -> String {
    func asdf() -> String {
        return s
    }
    return asdf
}
let f1 = redundand("apple")

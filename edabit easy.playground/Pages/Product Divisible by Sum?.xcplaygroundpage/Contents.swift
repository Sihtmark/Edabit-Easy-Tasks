//: [Previous](@previous)

import Foundation

//2. Product Divisible by Sum?
func divisible(_ arr: [Int]) -> Bool {
    return arr.reduce(1, *) % arr.reduce(0, +) == 0
}
divisible([14, 46])
divisible([2, 2])

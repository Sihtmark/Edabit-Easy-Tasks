//: [Previous](@previous)

import Foundation

//2. Count Ones in Binary Representation of Integer

func countOnes(_ num: Int) -> Int {
    let str = String(num, radix: 2)
    var count = 0
    for i in str {
        if i == "1" {
            count += 1
        }
    }
    return count
}
(countOnes(100))
(countOnes(0))
(countOnes(999))

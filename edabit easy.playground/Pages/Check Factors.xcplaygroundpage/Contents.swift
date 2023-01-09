//: [Previous](@previous)

import Foundation

//4. Check Factors

func checkFactors(_ factors: [Int], _ num: Int) -> Bool {
    for i in factors {
        if num % i != 0 {
            return false
        }
    }
    return true
}
(checkFactors([2, 3, 4], 12))
(checkFactors([1, 2, 3, 8], 12))
(checkFactors([1, 2, 50], 100))
(checkFactors([3, 6], 9))

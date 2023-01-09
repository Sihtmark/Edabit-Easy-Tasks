//: [Previous](@previous)

import Foundation

// Sort Numbers in Descending Order

// Create a function that takes any non-negative number as an argument and return it with its digits in descending order. Descending order is when you sort from highest to lowest.

func sortDescending(_ num: Int) -> Int {
    return Int(String(String(num).sorted(by: >)))!
}

sortDescending(123) // ➞ 321

sortDescending(1254859723) // ➞ 9875543221

sortDescending(73065) // ➞ 76530

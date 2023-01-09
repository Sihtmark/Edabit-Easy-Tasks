//: [Previous](@previous)

import Foundation

// GCD of Two Numbers

// Write a function that returns the greatest common divisor (GCD) of two integers.

func gcd(_ n1: Int, _ n2: Int) -> Int {
    return n2 == 0 ? n1 : gcd(n2, n1 % n2)
}

gcd(32, 8) // ➞ 8

gcd(8, 12) // ➞ 4

gcd(17, 13) // ➞ 1

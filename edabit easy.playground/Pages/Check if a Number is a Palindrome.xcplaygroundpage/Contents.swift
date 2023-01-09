//: [Previous](@previous)

import Foundation

//MARK: - Check if a Number is a Palindrome
//Write a function that returns true if a number is a palindrome.
func isPalindrome(_ n: Int) -> Bool {
    var n = n
    var numArray = [Int]()
    while n != 0 {
        numArray.append(n % 10)
        n /= 10
    }
    return numArray == numArray.reversed()
}
isPalindrome(838) // ➞ true
isPalindrome(4433) // ➞ false
isPalindrome(443344) // ➞ true

func isPalindrome1(_ n: Int) -> Bool {
    let num = String(n)
    for (i, char) in num.enumerated() {
        if char == num[num.index(num.endIndex, offsetBy: -i-1)] {
            return false
        }
    }
    return true
}

func isPalindrome2(_ n: Int) -> Bool {
    var x = n
    var reversedX = 0
    while x != 0 {
        reversedX = reversedX * 10 + x % 10
        x /= 10
    }
    return reversedX - n == 0
}

func isPalindrome3(_ n: Int) -> Bool {
    let x = String(n)
    let reversed = x.reversed().map{String($0)}
    return x == reversed.reduce("", +)
}

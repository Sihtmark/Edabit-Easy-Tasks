import Foundation
import UIKit

//MARK: - Chat Room Status
/*
 Write a function that returns the number of users in a chatroom based on the following rules:
 
 If there is no one, return "no one online".
 If there is 1 person, return "user1 online".
 If there are 2 people, return "user1 and user2 online".
 If there are n>2 people, return the first two names and add "and n-2 more online".
 For example, if there are 5 users, return:
 
 "user1, user2 and 3 more online"
 */
func chatroomStatus(_ users: [String]) -> String {
    switch users.count {
    case 0:
        return "no one online"
    case 1:
        return "\(users[0]) online"
    case 2:
        return "\(users[0]) and \(users[1]) online"
    default:
        return "\(users[0]), \(users[1]) and \(users.count - 2) more online"
    }
}
chatroomStatus([]) // ➞ "no one online"
chatroomStatus(["paRIE_to"]) // ➞ "paRIE_to online"
chatroomStatus(["s234f", "mailbox2"]) // ➞ "s234f and mailbox2 online"
chatroomStatus(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"]) // ➞ "pap_ier44, townieBOY and 4 more online"


//MARK: - Valid Zip Code
/*
 Zip codes consist of 5 consecutive digits. Given a string, write a function to determine whether the input is a valid zip code. A valid zip code is as follows:
 
 Must only contain numbers (no non-digits allowed).
 Must not contain any spaces.
 Must not be greater than 5 digits in length.
 */
func isValid(_ zip: String) -> Bool {
    return zip.map{$0}.count == 5 && (Int(zip)) != nil
}
isValid("59001") // true
isValid("853a7") // false
isValid("732 32") // false
isValid("393939") // false


//MARK: - Sum of Digits Between Two Numbers
/*
 Create a function that sums the total number of digits between two numbers, inclusive. For example, between the numbers 19 and 22 we have:
 19, 20, 21, 22
 (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19
 */
func sumDigits(_ a: Int, _ b: Int) -> Int {
    var array: [String] = []
    var array1: [Character] = []
    var c = a
    while c != b + 1 {
        array.append(String(c))
        c += 1
    }
    for i in array {
        i.map{array1.append($0)}
    }
    return array1.map{Int(String($0))!}.reduce(0, +)
}
sumDigits(7, 8) // 15
sumDigits(17, 20) // 29
sumDigits(10, 12) // 6


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


//MARK: - What's Hiding Amongst the Crowd?
/*
 A word is on the loose and now has tried to hide amongst a crowd of tall letters! Help write a function to detect what the word is,
 knowing the following rules:
 —— The wanted word is in lowercase.
 —— The crowd of letters is all in uppercase.
 —— Note that the word will be spread out amongst the random letters, but their letters remain in the same order.
 */
func detectWord(_ str: String) -> String {
    return str.filter{$0.isLowercase}
}
detectWord("UcUNFYGaFYFYGtNUH") // ➞ "cat"

detectWord("bEEFGBuFBRrHgUHlNFYaYr") // ➞ "burglar"

detectWord("YFemHUFBbezFBYzFBYLleGBYEFGBMENTment") // ➞ "embezzlement"


//MARK: - The Karaca's Encryption Algorithm
/*
 Make a function that encrypts a given input with these steps:
 Input: "apple"
 Step 1: Reverse the input: "elppa"
 Step 2: Replace all vowels using the following chart:
 a => 0
 e => 1
 i => 2
 o => 2
 u => 3
 // "1lpp0"
 Step 3: Add "aca" to the end of the word: "1lpp0aca"
 Output: "1lpp0aca"
 */
func encrypt(_ word: String) -> String {
    return String(word.replacingOccurrences(of: "a", with: "0")
        .replacingOccurrences(of: "e", with: "1")
        .replacingOccurrences(of: "i", with: "2")
        .replacingOccurrences(of: "o", with: "2")
        .replacingOccurrences(of: "u", with: "3")
        .reversed() ) + "aca"
}
encrypt("banana") // ➞ "0n0n0baca"
encrypt("karaca") // ➞ "0c0r0kaca"
encrypt("burak") // ➞ "k0r3baca"
encrypt("alpaca") // ➞ "0c0pl0aca"

func encrypt1(_ word: String) -> String {
    let wordReversed = String(word.reversed())
    let vowelsToNumbers = {(i: String)->String in
        if i == "a"{
            return "0"
        }else if i == "e"{
            return "1"
        }else if i == "i" || i == "o"{
            return "2"
        }else if i == "u"{
            return "3"
        }else{
            return i
        }
    }
    return wordReversed.map({vowelsToNumbers(String($0))}).reduce("", +) + "aca"
}

func encrypt2(_ word: String) -> String {
    return word.reversed().map({
          var c = $0
        switch c {
            case "a": c = "0"
            case "e": c = "1"
            case "i": c = "2"
            case "o": c = "2"
            case "u": c = "3"
            default: break
        }
        return String(c)
    }).joined() + "aca"
}

func encrypt3(_ word: String) -> String {
    let dict: [String: String] = ["a": "0", "e": "1", "i": "2", "o": "2", "u": "3"]
     return word
        .reversed()
        .map { dict.keys.contains(String($0)) ? dict[String($0)]! : String($0) }
        .joined() + "aca"
}

func encrypt4(_ word: String) -> String {
  let vow: [Character: Character] = ["a": "0", "e": "1", "i": "2", "o": "2", "u": "3"]
  return String(word.reversed().map { vow[$0] != nil ? vow[$0]! : $0 }) + "aca"
}


import UIKit
import SwiftUI
import os
import Foundation


//4. Filter by Digit Length

func filterDigitLength(_ arr: [Int], _ num: Int) -> [Int] {
    var count: Int = 0
    var x: Int = 0
    var array: [Int] = []
    
    for int in arr {
        x = int
        while x > 0 {
            x /= 10
            count += 1
        }
        if count == num {
            array.append(int)
        }
        count = 0
        x = 0
    }
    return array
}
(filterDigitLength([88, 232, 4, 9721, 555], 3))
(filterDigitLength([2, 7, 8, 9, 1012], 1))
(filterDigitLength([32, 88, 74, 91, 300, 4050], 1))
(filterDigitLength([5, 6, 8, 9], 1))



//5. Phone Number Formatting

func formatPhoneNumber(_ numbers: [Int]) -> String {
    var array: [String] = []
    var string: String = ""
    for i in numbers {
        array.append(String(i))
    }
    array.insert("(", at: array.startIndex)
    array.insert(") ", at: array.index(before: 5))
    array.insert("-", at: array.index(before: 9))
    for i in array {
        string += i
    }
    return string
}
(formatPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]))
(formatPhoneNumber([5, 1, 9, 5, 5, 5, 4, 4, 6, 8]))

var xy = 100.0
for _ in 1...600 {
    xy *= 1.01
}
(xy)




//1. Double Letters

func doubleLetters(_ word: String) -> Bool {
    var array: [Character] = []
    for i in word {
        array.append(i)
    }
    var count = 0
    for e in word {
        if word.contains(e) {
            count += 1
        }
    }
    if count >= 2 {
        return true
    } else {
        return false
    }
}
(doubleLetters("loop"))




//2. Last Digit Ultimate

func lastDig(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    func last(x: Int) -> Int {
        var str = String(x)
        let lastChar = str.removeLast()
        let lastStr = String(lastChar)
        let lastInt = Int(lastStr) ?? 0
        return lastInt
    }
    let lastA = last(x: a)
    let lastB = last(x: b)
    let lastC = last(x: c)
    let multAB = lastA * lastB
    if last(x: multAB) == lastC {
        return true
    } else {
        return false
    }
}
(lastDig(25, 21, 125))
(lastDig(55, 226, 5190))
(lastDig(12, 215, 2142))



//3. Find the Largest Numbers in a Group of Arrays

func findLargestNums(_ arr: [[Double]]) -> [Double] {
    var array: [Double] = []
    for i in arr {
        array.append(i.max() ?? 0)
    }
    return array
}
(findLargestNums([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]))
(findLargestNums([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]]))
(findLargestNums([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]]))



//4. Which Function Returns the Larger Number?

func larger(_ f: () -> Int, _ g: () -> Int) -> String {
    if f() > g() {
        return "f"
    } else if f() < g() {
        return "g"
    } else {
        return "neither"
    }
}
(larger({5}, {10}))
(larger({25}, {25}))
(larger({505050}, {5050}))



//5. Typing Game

func correctStream(_ user: [String], _ correct: [String]) -> [Int] {
    var array = user
    var answer: [Int] = []
    var string: String
    for i in correct {
        string = array.removeFirst()
        if i == string {
            answer.append(1)
        } else {
            answer.append(-1)
        }
    }
    return answer
}
(correctStream(
    ["it", "is", "find"],
    ["it", "is", "fine"]
))
(correctStream(
    ["april", "showrs", "bring", "may", "flowers"],
    ["april", "showers", "bring", "may", "flowers"]
))




//6. Xs and Os, Nobody Knows

func XO(_ str: String) -> Bool {
    var x = 0
    var o = 0
    for i in str {
        if i == "o" {
            o += 1
        } else if i == "x" {
            x += 1
        }
    }
    if o == x {
        return true
    } else if o == 0 && x == 0 {
        return true
    } else {
        return false
    }
}
(XO("ooxx"))
(XO("xooxx"))
(XO("zpzpzpp"))
(XO("zzoo"))



//7. Move Capital Letters to the Front

func capToFront(_ s: String) -> String {
    var str = ""
    var STR = ""
    for i in s {
        if i.isUppercase {
            STR.append(i)
        } else if i.isLowercase {
            str.append(i)
        }
    }
    return STR + str
}
(capToFront("hApPy"))
(capToFront("moveMENT"))
(capToFront("shOrtCAKE"))



//8. Is the Number Symmetrical

func isSymmetrical(_ num: Int) -> Bool {
    let string = String(num)
    var array: [Character] = []
    for i in string { array.append(i) }
    if array == array.reversed() {
        return true
    } else {
        return false
    }
}
(isSymmetrical(7227))
(isSymmetrical(12567))
(isSymmetrical(444444444))
(isSymmetrical(9939))
(isSymmetrical(1112111))




//1. Count Ones in a 2D Array

func countOnes(_ matrix: [[Int]]) -> Int {
    var count = 0
    let x = Array(matrix.joined())
    var array: [String] = []
    for i in x { array.append(String(i)) }
    for i in array {
        if i == "1" {
            count += 1
        }
    }
    return count
}
(countOnes([
    [1, 0],
    [0, 0]
]))
(countOnes([
    [1, 1, 1],
    [0, 0, 1],
    [1, 1, 1]
]))
(countOnes([
    [1, 2, 3],
    [0, 2, 1],
    [5, 7, 33]
]))



//2. Basic Calculator

enum CalculatorError: Error {
    case zeroDivision
}
func calculator(_ n: Int, _ op: String, _ m: Int) throws -> Int {
    if op == "+" {
        return n + m
    } else if op == "-" {
        return n - m
    } else if op == "*" {
        return n * m
    } else if op == "/" {
        if m == 0 {
            return 0
        } else {
            return n / m
        }
    } else {
        return 0
    }
}
(try calculator(2, "+", 2))
(try calculator(2, "*", 18))
(try calculator(2, "/", 0))

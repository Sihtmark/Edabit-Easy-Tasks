import UIKit
import SwiftUI
import os
import Foundation

// How many Vowels?

func countVowels(_ str: String) -> Int {
    var count = 0
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    for character in str {
        for vowel in vowels {
            if vowel == character {
                count += 1
            }
        }
    }
    return count
}
countVowels("Celebration")
countVowels("Palm")
countVowels("Prediction")



// Remove the First and Last Characters

func removeFirstLast(_ str: String) -> String {
    var newStr = str
    newStr.remove(at: newStr.startIndex)
    newStr.remove(at: newStr.index(before: newStr.endIndex))
    return newStr
}
removeFirstLast("Sergei")
removeFirstLast("Maardu")


// Reverse Coding Challenge #3

func mysteryFunc(_ arr: [Int], _ num: Int) -> [Int] {
    var newArr: [Int] = []
    var x: Int
    for integer in arr {
        x = integer % num
        newArr.append(x)
    }
    return newArr
}



// Even Odd Partition

func evenOddPartition(_ arr: [Int]) -> [[Int]] {
    let простыеЧисла = arr.filter { $0 % 2 == 0}
    let сложныеЧисла = arr.filter { $0 % 2 == 1}
    let newArr = [простыеЧисла, сложныеЧисла]
    return newArr
}
evenOddPartition([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])


// Smaller String Number

func smallerNum(_ n1: String, _ n2: String) -> String {
    let N1 = Int(n1) ?? 0
    let N2 = Int(n2) ?? 0
    if N1 > N2 {
        return n1
    } else {
        return n2
    }
}



// State Names and abbreviations

func filterStateNames(_ arr: [String], _ type: String) -> [String] {
    var filteredArr: [String] = []
    if type == "full" {
        for state in arr {
            if state.count != 2 {
                filteredArr.append(state)
            }
        }
    } else {
        for state in arr {
            if state.count == 2 {
                filteredArr.append(state)
            }
        }
    }
    return filteredArr
}
filterStateNames(["Arizona", "CA", "NY", "Nevada"], "abb")
(filterStateNames(["Arizona", "CA", "NY", "Nevada"], "full"))
(filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "abb"))
(filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "full"))



// Check if a String Contains only Identical Characters

func isIdentical(_ s: String) -> Bool {
    var x = 0
    let y: Character = s[s.startIndex]
    for character in s {
        if character == y {
            x += 1
        } else if character != y {
            continue
        }
    }
    if x == s.count {
        return true
    } else {
        return false
    }
}
(isIdentical("aaaaaa"))
(isIdentical("aabaaa"))
(isIdentical("ccccca"))
(isIdentical("kk"))



//1. Find the Second Largest Number

func secondLargest(_ arr: [Int]) -> Int {
    let array = arr.sorted()
    let x = array.endIndex
    return array[x-2]
}
(secondLargest([10, 40, 30, 20, 50]))
(secondLargest([25, 143, 89, 13, 105]))
(secondLargest([54, 23, 11, 17, 10]))



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



//1. Switcharoo

func flipEndChars(_ str: String) -> String {
    var z = str
    let w = str.count
    if w <= 2 {
        return "Incompatible."
    } else {
        let x: Character = str[str.startIndex]
        let y: Character = str[str.index(before: str.endIndex)]
        z.remove(at: z.startIndex)
        z.remove(at: z.index(before: z.endIndex))
        if x == y {
            return "Two's a pair."
        } else {
            return "\(String(y))\(z)\(String(x))"
        }
    }
}
(flipEndChars("Cat, dog, and mouse."))
(flipEndChars("ada"))
(flipEndChars("z"))



//2. Find the Largest Numbers in a Group of Arrays

func findLargest(_ arr: [[Double]]) -> [Double] {
    var newArray: [Double] = []
    var y: Double
    let x = arr
    for array in x {
        var z = array.sorted()
        y = z.removeLast()
        newArray.append(y)
    }
    return newArray
}
(findLargest([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]))
(findLargest([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]]))
(findLargest([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]]))



//3. Box Completely Filled?

func completelyFilled(_ arr: [String]) -> Bool {
    var x = 0
    for i in arr {
        if i.contains(" ") {
            x += 1
        }
    }
    if x == 0 {
        return true
    } else {
        return false
    }
}
(completelyFilled([
    "#####",
    "#***#",
    "#***#",
    "#***#",
    "#####"
]))
(completelyFilled([
    "#####",
    "#* *#",
    "#***#",
    "#***#",
    "#####"
]))
(completelyFilled([
    "##",
    "##"
]))



//4. Repeating Letters

func doubleChar(_ str: String) -> String {
    var array: [Character] = []
    for character in str {
        array.append(character)
        array.append(character)
    }
    return String(array)
}
(doubleChar("String"))
(doubleChar("Hello World!"))
(doubleChar("1234!_ "))



//5. Transform into an Array with No Duplicates

func setify(_ arr: [Int]) -> [Int] {
    let asdf = Set(arr).sorted()
    return Array(asdf)
    }
(setify([1, 3, 3, 5, 5]))
(setify([4, 4, 4, 4]))
(setify([5, 7, 8, 9, 10, 15]))
(setify([3, 3, 3, 2, 1]))



//6. Transforming Words into Binary Strings

func convertBinary(_ str: String) -> String {
    var vbn: [Character] = []
    let abc: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    let nop: [Character] = ["n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    for i in str {
        if abc.contains(i) {
            vbn.append("0")
        } else if nop.contains(i) {
            vbn.append("1")
        } else {
        }
    }
    return String(vbn)
}
(convertBinary("house"))
(convertBinary("excLAIM"))
(convertBinary("moon"))



//7. Cumulative Array Sum

func cumulativeSum(_ arr: [Int]) -> [Int] {
    var varArr = arr
    let arrCount = arr.count
    var removeFirstArr = varArr.removeFirst()
    var anserCumulativeSum: [Int] = []
    for _ in 1...arrCount {
        anserCumulativeSum.append(removeFirstArr)
        if varArr != [] {
            removeFirstArr += varArr.removeFirst()
        }
    }
    return anserCumulativeSum
}
(cumulativeSum([1, 2, 3, 4]))
(cumulativeSum([1, -2, 3]))
(cumulativeSum([3, 3, -2, 408, 3, 3]))

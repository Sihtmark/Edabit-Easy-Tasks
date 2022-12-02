import UIKit
import SwiftUI
import os
import Foundation

//3. Factor Chain

func factorChain(_ arr: [Int]) -> Bool {
    var x = 1
    for i in arr.reversed() {
        while x != arr.count {
            if i % arr.reversed()[x] == 0 {
                x += 1
            } else {
                return false
            }
        }
    }
    return true
}

(factorChain([1, 2, 4, 8, 16, 32]))
(factorChain([1, 1, 1, 1, 1, 1]))
(factorChain([2, 4, 6, 7, 12]))
(factorChain([10, 1]))
(factorChain([]))



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



//5. Lonely Integer

func lonelyInteger(_ arr: [Int]) -> Int {
    let array1 = arr.filter { $0 < 0 }
    let array2 = arr.filter { $0 > 0 }
    let sum1 = array1.reduce(0, -)
    let sum2 = array2.reduce(0, +)
    return sum2 - sum1
}
(lonelyInteger([1, -1, 2, -2, 3]))
(lonelyInteger([-3, 1, 2, 3, -1, -4, -2]))
(lonelyInteger([-9, -105, -9, -9, -9, -9, 105]))



//6. Find Unique Character Strings

func filterUnique(_ arr: [String]) -> [String] {
    var array = [String]()
    func sort(_ input: String) -> Bool {
        return Set(input).count == input.count
    }
    for string in arr {
        if sort(string) == true {
            array.append(string)
        }
    }
    return array
}
(filterUnique(["abb", "abc", "abcdb", "aea", "bbb"]))
(filterUnique(["88", "999", "989", "9988", "9898"]))
(filterUnique(["ABCDE", "DDEB", "BED", "CCA", "BAC"]))




//1. Four Passengers and a Driver

func carsNeeded(_ n: Int) -> Int {
    let remainder = n % 5
    if remainder == 0 {
        return n / 5
    } else {
        return n / 5 + 1
    }
}
carsNeeded(5)
carsNeeded(11)
carsNeeded(0)




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




//3. Is Johnny Making Progress?

func progressDays(_ runs: [Int]) -> Int {
    var count = 1
    var anser = 0
    for i in runs {
        if count == runs.count {
            break
        } else if i < (runs[count]) {
            anser += 1
        }
        count += 1
    }
    return anser
}
(progressDays([3, 4, 1, 2]))
(progressDays([10, 11, 12, 9, 10]))
(progressDays([6, 5, 4, 3, 2, 9]))
(progressDays([9, 9]))



//4. Squares and Cubes

func checkSquareAndCube(_ array: [Int]) -> Bool {
    var arr = array.map { $0 }
    let x = arr.removeFirst()
    let y = arr.removeFirst()
    if x / x == y / y / y {
        return true
    } else {
        return false
    }
}
(checkSquareAndCube([4, 8]))
(checkSquareAndCube([16, 48]))
(checkSquareAndCube([9, 27]))



//5. Split Item Codes

func splitCode(_ item: String) -> [Any] {
    let numbers: Set<Character> = ["0", "1" , "2", "3", "4", "5", "6", "7", "8", "9"]
    let numeric = item.filter { numbers.contains($0) }
    var alphabetic = item
    alphabetic.removeAll( where: { numbers.contains($0) } )
    return [alphabetic, numeric]
}
(splitCode("TEWA8392"))
(splitCode("MMU778"))
(splitCode("SRPE5532"))




//1. Return the Index of All Capital Letters

func indexOfCaps(_ str: String) -> [Int] {
    return str.enumerated().filter{$0.element.isUppercase}.map{$0.offset}
}
(indexOfCaps("eDaBiT"))
(indexOfCaps("eQuINoX"))
(indexOfCaps("determine"))
(indexOfCaps("STRIKE"))
(indexOfCaps("sUn"))




//2. Find the Smallest and Biggest Numbers
func minMax(_ arr: [Double]) -> [Double] {
    let x = arr.min() ?? 0
    let y = arr.max() ?? 0
    return [x, y]
}
(minMax([1, 2, 3, 4, 5]))
(minMax([2334454, 5]))
(minMax([1]))




//3. Find the Missing Number
func missingNum(_ arr: [Int]) -> Int {
    let set: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    return set.reduce(0, +) - arr.reduce(0, +)
}
(missingNum([1, 2, 3, 4, 6, 7, 8, 9, 10]))
(missingNum([7, 2, 3, 6, 5, 9, 1, 4, 8]))
(missingNum([10, 5, 1, 2, 4, 6, 8, 3, 9]))




//4. H4ck3r Sp34k
func hackerSpeak(_ str: String) -> String {
    let string1 = str.replacingOccurrences(of: "a", with: "4")
    let string2 = string1.replacingOccurrences(of: "e", with: "3")
    let string3 = string2.replacingOccurrences(of: "i", with: "1")
    let string4 = string3.replacingOccurrences(of: "o", with: "0")
    let string = string4.replacingOccurrences(of: "s", with: "5")
    return string
}
(hackerSpeak("javascript is cool"))
(hackerSpeak("programming is fun"))
(hackerSpeak("become a coder"))




//5. Odd Up, Even Down – N Times
func evenOddTransform(_ arr: [Int], _ n: Int) -> [Int] {
    var array = arr
    var x = 0
    for i in array {
        x = i
        for _ in 1...n {
            if i % 2 == 0 {
                x -= 2
            } else {
                x += 2
            }
        }
        array.append(x)
    }
    for _ in 1...3 { array.removeFirst() }
    return array
}
(evenOddTransform([3, 4, 9], 3))
(evenOddTransform([0, 0, 0], 10))
(evenOddTransform([1, 2, 3], 1))




//1. Sum of Resistance in Series Circuits
func seriesResistance(_ arr: [Double]) -> String {
    let sum = arr.reduce(0, +)
    return "\(sum) ohms"
}
(seriesResistance([1, 5, 6, 3]))
(seriesResistance([16, 3.5, 6]))
(seriesResistance([0.5, 0.5]))




//2. A Redundand Function
func redundand(_ s: String) -> () -> String {
    func asdf() -> String {
        return s
    }
    return asdf
}
let f1 = redundand("apple")




//3. Remove the Special Characters from a String
func removeSpecialCharacters(_ str: String) -> String {
    var string = str
    let specialCharacters: [Character] = [".", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")"]
    string.removeAll(where: {specialCharacters.contains($0)})
    return string
}
(removeSpecialCharacters("The quick brown fox!"))
(removeSpecialCharacters("%fd76$fd(-)6GvKlO."))
(removeSpecialCharacters("D0n$c sed 0di0 du1"))

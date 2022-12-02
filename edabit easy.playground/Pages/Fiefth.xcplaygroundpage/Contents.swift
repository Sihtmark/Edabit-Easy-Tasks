import UIKit
import SwiftUI
import os
import Foundation


//4. Calculate the Median
func median(_ arr: [Double]) -> Double {
    let array = arr.sorted()
    let half: Int = array.count / 2 - 1
    if array.count % 2 != 0 {
        return array[half + 1]
    } else {
        return (array[half] + array[array.index(after: half)]) / 2
    }
}
(median([2, 5, 6, 2, 6, 3, 4]))
(median([21.4323, 432.54, 432.3, 542.4567]))
(median([-23, -43, -29, -53, -67]))




//5. Retrieve the Subreddit
func subReddit(_ link: String) -> String {
    let name = link.replacingOccurrences(of: "https://www.reddit.com/r/", with: "")
    let name1 = name.replacingOccurrences(of: "/", with: "")
    return name1
}
(subReddit("https://www.reddit.com/r/funny/"))
(subReddit("https://www.reddit.com/r/relationships/"))
(subReddit("https://www.reddit.com/r/mildlyinteresting/"))

func subReddit1(_ link: String) -> String {
    var split = link.split(separator: "/")
    return String(split.removeLast())
}
(subReddit1("https://www.reddit.com/r/funny/"))
(subReddit1("https://www.reddit.com/r/relationships/"))
(subReddit1("https://www.reddit.com/r/mildlyinteresting/"))




//6. X and Y Coordinates
func convertCartesian(_ x: [Int], _ y: [Int]) -> [[Int]] {
    var array: [[Int]] = []
    for (Xses, Yses) in zip(x, y) {
        array.append([Xses, Yses])
    }
    return array
}
(convertCartesian([1, 5, 3, 3, 4], [5, 8, 9, 1, 0]))
(convertCartesian([9, 8, 3], [1, 1, 1]))




//7. Something in the Box?
func inBox(_ arr: [String]) -> Bool {
    var array = arr
    let first = array.removeFirst()
    let last = array.removeLast()
    for a in first { if a != "#" { return false }}
    for e in last { if e != "#" { return false }}
    for i in array { if i[i.startIndex] != "#" && i[i.endIndex] != "#" { return false }}
    var count = 0
    for o in array { for u in o { if u == "*" { count += 1 }}}
    if count == 0 { return false }
    return true
}
(inBox([
    "###",
    "#*#",
    "###"
]))
(inBox([
    "####",
    "#* #",
    "#  #",
    "####"
]))
(inBox([
    "*####",
    "# #",
    "#  #*",
    "####"
]))
(inBox([
    "#####",
    "#   #",
    "#   #",
    "#   #",
    "#####"
]))



//8. Array from Comma-Delimited String
func toArray(_ str: String) -> [String] {
    let array = str.components(separatedBy: ", ")
    return array
}
(toArray("watermelon, raspberry, orange"))
(toArray("x1, x2, x3, x4, x5"))
(toArray("a, b, c, d"))
(toArray(""))



//9. Vowel Replacer
func replaceVowels(_ str: String, _ char: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
    let replaced = String(str.map { vowels.contains($0) ? Character("\(char)") : $0 } )
    return replaced
}
(replaceVowels("the aardvark", "#"))
(replaceVowels("minnie mouse", "?"))
(replaceVowels("shakespeare", "*"))




//10. Days in a Month
func days(_ month: Int, _ year: Int) -> Int {
    var dictionary = [1: 31, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31]
    var count = 2020
    var високосныйГод: [Int] = []
    while count != 0 {
        високосныйГод.append(count)
        count -= 4
    }
    if високосныйГод.contains(year) {
        dictionary[2] = 29
    } else {
        dictionary[2] = 28
    }
    let countOfDays = dictionary[month] ?? 0
    return countOfDays
}
(days(2, 2018))
(days(4, 654))
(days(2, 200))
(days(2, 1000))



//1. Trace That Matrix
func trace(_ matrix: [[Int]]) -> Int {
    var answer = 0
    var count = 0
    for i in matrix {
        answer += i[count]
        count += 1
    }
    return answer
}
([[1, 4],[4, 1]])
([[1, 2, 3],[4, 5, 6],[7, 8, 9]])
([[1, 0, 1, 0],[0, 2, 0, 2],[3, 0, 3, 0],[0, 4, 0, 4]])




//2. Product Divisible by Sum?
func divisible(_ arr: [Int]) -> Bool {
    return arr.reduce(1, *) % arr.reduce(0, +) == 0
}
divisible([14, 46])
divisible([2, 2])

//1. Sum of Resistance in Parallel Circuits
func parallelResistance(_ arr: [Double]) -> Double {
    return Double(String(format: "%.1f", (1 / (arr.map{1/$0}.reduce(0,+)))))!
}
parallelResistance([6, 3, 6])
parallelResistance([6, 3])
parallelResistance([10, 20, 10])
parallelResistance([500, 500, 500])



//2. Reverse the Order of a String
func reverce(_ str: String) -> String {
    return String(str.map{$0}.reversed())
}
reverce("Hello World")
reverce("The quick brown fox.")
reverce("Edabit is really helpful!")



//3. Shuffle the Name
func nameShuffle(_ str: String) -> String {
    return str.split(separator: " ").reversed().joined(separator: " ")
}
nameShuffle("Donald Trump")
nameShuffle("Rosie O'Donnell")
nameShuffle("Seymour Butts")




//4. Capture the Rook
func canCapture(_ rooks: [String]) -> Bool {
    return rooks[0]
        .map{$0}.first == rooks[1].map{$0}.first ||
        rooks[0].map{$0}.last == rooks[1].map{$0}.last
}
canCapture(["A8", "E8"])
canCapture(["A1", "B2"])
canCapture(["H4", "H3"])
canCapture(["F5", "C8"])



//5. The Karaca's Encryption Algorithm
func encrypt(_ word: String) -> String {
    return String(word
                    .replacingOccurrences(of: "a", with: "0")
                    .replacingOccurrences(of: "e", with: "1")
                    .replacingOccurrences(of: "i", with: "2")
                    .replacingOccurrences(of: "o", with: "2")
                    .replacingOccurrences(of: "u", with: "3")
                    .reversed()) + "aca"
}
encrypt("banana")
encrypt("karaca")
encrypt("burak")
encrypt("alpaca")




//1. Special Arrays
func isSpecialArray(_ arr: [Int]) -> Bool {
    var oddArr = [Int]()
    var evenArr = [Int]()
    for (index, element) in arr.enumerated() {
        if index % 2 == 1 {
            oddArr.append(element)
        }
        if index % 2 == 0 {
            evenArr.append(element)
        }
    }
return oddArr
    .map{$0 % 2 == 1}
    .contains(false) == false && evenArr
    .map{$0 % 2 == 0}
    .contains(false) == false
}
isSpecialArray([2, 7, 4, 9, 6, 1, 6, 3])
isSpecialArray([2, 7, 9, 1, 6, 1, 6, 3])
isSpecialArray([2, 7, 8, 8, 6, 1, 6, 3])



//2. Repeating Letters N Times
func repeating(_ str: String, _ n: Int) -> String {
    return str.map{String(repeating: $0, count: n)}.joined()
}
repeating("Sergei", 5)



//3. The Collatz Conjecture
func collatz(_ num: Int) -> Int {
    var count = 0
    var number = num
    while number != 1 {
        number = number % 2 == 0 ? number / 2 : number * 3 + 1
        count += 1
    }
    return count
}
collatz(2)
collatz(3)
collatz(10)



//4. Say Hello to Guets
func greetPeople(_ names: [String]) -> String {
    return String(names.map{String("Hello \($0)")}
                    .joined(separator: ", "))
}
greetPeople(["Joe"])
greetPeople(["Angela", "Joe"])
greetPeople(["Frank", "Angela", "Joe"])




//5. Reverse the Order of Words with Five Letters or More
func reverse(_ str: String) -> String {
    return str
        .components(separatedBy: " ")
        .map{$0.count < 5 ? String($0) : String($0.reversed())}
        .joined(separator: " ")
}
reverse("Reverse")
reverse("This is a typical sentence.")
reverse("The dog is big.")



//1. Increment to Top
func incrementToTop(_ arr: [Int]) -> Int {
    return arr.map{arr.max()! - $0}.reduce(0, +)
}
incrementToTop([3, 4, 5])
incrementToTop([4, 3, 4])
incrementToTop([3, 3, 3])
incrementToTop([3, 10, 3])
    
    
    
//2. Guess the Sequence
func guessSequence(_ num: Int) -> Int {
    return (60 + 30 * num) * num
}
guessSequence(1)
guessSequence(2)
guessSequence(3)
    
    
    
//3. Maskify the String
func maskify(_ str: String) -> String {
    return String(repeating: "#", count: max(0, str.count - 4)) + String(str.suffix(4))
}
maskify("4556364607935616")
maskify("64607935616")
maskify("1")
maskify("")



//1. Find the Odd Integer
func findOdd(_ arr: [Int]) -> Int {
    var num: Int = 0
    for i in arr {
        if arr.filter({$0 == i }).count % 2 != 0 {num = i}
    }
    return num
}
findOdd([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5])
findOdd([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5])
findOdd([10])



//2. Sum of Digits Between Two Numbers
func sumDigits(_ a: Int, _ b: Int) -> Int {
    return Array(a...b)
        .map{String($0)}
        .joined()
        .map{Int(String($0))!}
        .reduce(0, +)
}
sumDigits(7, 8)
sumDigits(17, 20)
sumDigits(10, 12)



//3. Moving to the End
func moveToEnd(_ arr: [Int], _ el: Int) -> [Int] {
    return arr.filter{$0 != el} + arr.filter{$0 == el}
}
moveToEnd([1, 3, 2, 4, 4, 1], 1)
moveToEnd([7, 8, 9, 1, 2, 3, 4], 9)



//4. Get the File Extension
func getExtension(_ arr: [String]) -> [String] {
    return arr.map{$0.components(separatedBy: ".")[1]}
}
getExtension(["code.html", "code.css"])
getExtension(["project1.jpg", "project1.pdf", "project1.mp3"])
getExtension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"])




//1. Snail Race
func mauriceWins(_ mSnails: [Int], _ sSnails: [Int]) -> Bool {
    let sSnailsReorder = [sSnails[2], sSnails[0], sSnails[1]]
    return zip(mSnails, sSnailsReorder).map{ $0.0 > $0.1 }.filter{ $0 == true }.count >= 2
}
mauriceWins([3, 5, 10], [4, 7, 11])
mauriceWins([6, 8, 9], [7, 12, 14])
mauriceWins([1, 8, 20], [2, 9, 100])



//2. Return the First and Last Elements in an Array
func firstLast(_ arr: [Any]) -> [Any] {
    return [arr.first!, arr.last!]
}
firstLast([5, 10, 15, 20, 25])
firstLast(["edabit", 13, false, true])
firstLast(["hello", "edabit", "dot", "com"])



//3. Longest Sequence of Consecutive Zeroes
func longestZero(_ str: String) -> String {
    return str.components(separatedBy: "1").max()!
}
longestZero("01100001011000")
longestZero("100100100")
longestZero("11111")

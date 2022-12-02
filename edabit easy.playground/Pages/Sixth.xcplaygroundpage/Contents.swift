//: [Previous](@previous)

import Foundation
import UIKit

// Prefixes vs. Suffixes
func isPrefix(_ word: String, _ prefixer: String) -> Bool {
    return word.hasPrefix(prefixer.replacingOccurrences(of: "-", with: ""))
}

func isSuffix(_ word: String, _ suffixer: String) -> Bool {
    return word.hasSuffix(suffixer.replacingOccurrences(of: "-", with: ""))
}
isPrefix("automation", "auto-")
isSuffix("arachnophobia", "-phobia")
isPrefix("retrospect", "sub-")
isSuffix("vocation", "-logy")



// International Greetings
let GUEST_LIST = [
    "Randy": "Germany",
    "Karla": "France",
    "Wendy": "Japan",
    "Norman": "England",
    "Sam": "Argentina"
]
func greeting(_ name: String) -> String {
    if GUEST_LIST[name] != nil {
        return "Hi! I'm \(name), and I'm from \(GUEST_LIST[name]!)."
    }
    return "Hi! I'm a guest."
}
greeting("Randy")
greeting("Sam")
greeting("Monti")



// Negative Image
func reverseImage(_ image: [[Int]]) -> [[Int]] {
    return image.map { $0.map { $0 == 0 ? 1 : 0 } }
}
reverseImage([[1, 0, 0], [0, 1, 0], [0, 0, 1]])
reverseImage([[1, 1, 1], [0, 0, 0]])
reverseImage([[1, 0, 0], [1, 0, 0]])



// Sort Numbers in Descending Order
func sortDescending(_ num: Int) -> Int {
    return Int(String(String(num).sorted(by: >)))!
}
sortDescending(7928346)



// Return the Middle Character(s) of a String
func getMiddle(_ str: String) -> String {
    var x = str
    if x.count > 2 {
        x.removeFirst()
        x.removeLast()
    }
    return String(x)
}
getMiddle("test")
getMiddle("testing")
getMiddle("middle")
getMiddle("A")



// Convenience Store
func changeEnough(_ change: [Int], _ amountDue: Double) -> Bool {
    let x = Double(change[0]) * 0.25 + Double(change[1]) * 0.1 + Double(change[2]) * 0.05 + Double(change[3]) * 0.01
    return x >= amountDue
}
changeEnough([2, 100, 0, 0], 14.11)
changeEnough([0, 0, 20, 5], 0.75)
changeEnough([30, 40, 20, 5], 12.55)
changeEnough([10, 0, 0, 50], 3.85)
changeEnough([1, 0, 5, 219], 19.99)



// Chocolate Dilemma
func testFairness(_ agatha: [[Int]], _ bertha: [[Int]]) -> Bool {
    let agathaTotal = agatha.map{$0.reduce(1, *)}.reduce(0, +)
    let berthaTotal = bertha.map{$0.reduce(1, *)}.reduce(0, +)
    return agathaTotal == berthaTotal
}
testFairness([[1, 2], [2, 1]], [[2, 2]])
testFairness([[1, 2], [2, 1]], [[2, 2], [4, 4]])
testFairness([[2, 2], [2, 2], [2, 2], [2, 2]], [[4, 4]])
testFairness([[1, 5], [6, 3], [1, 1]], [[7, 1], [2, 2], [1, 1]])



// Total Volume of All Boxes
func totalVolume(_ boxes: [Int]...) -> Int {
    return boxes.map{$0.reduce(1,*)}.reduce(0,+)
}
totalVolume([4, 2, 4], [3, 3, 3], [1, 1, 2], [2, 1, 1])
totalVolume([2, 2, 2], [2, 1, 1])
totalVolume([1, 1, 1])



// Even or Odd Number of Factors
func factorGroup(_ num: Int) -> String {
    let x = String(num).map{Int(String($0))!}.reduce(1,*)
    return x % 2 == 0 ? "odd" : "even"
}
factorGroup(33)
factorGroup(36)
factorGroup(7)



// Char-to-ASCII
func ctoa(_ char: String) -> Int {
    return Int(Character(char).asciiValue!)
}
ctoa("A")
ctoa("m")
ctoa("[")
ctoa("/")



// Hamming Distance
func hammingDistance(_ str1: String, _ str2: String) -> Int {
    return zip(Array(str1), Array(str2)).filter{$0 != $1}.count
}
hammingDistance("abcde", "bcdef")
hammingDistance("abcde", "abcde")
hammingDistance("strong", "strung")



// Simple Circle Collosion Detection
func isCircleCollision(_ c1: [Int], _ c2: [Int]) -> Bool {
    let r1 = c1[0]
    let x1 = c1[1]
    let y1 = c1[2]
    
    let r2 = c2[0]
    let x2 = c2[1]
    let y2 = c2[2]
    let distX = x2 - x1
    let distY = y2 - y1
    
    return Double(r1 + r2) > sqrt(Double(distX*distX + distY*distY))
}
isCircleCollision([10, 0, 0], [10, 10, 10])
isCircleCollision([1, 0, 0], [1, 10, 10])



//MARK: Snail Race
func mauriceWins(_ mSnails: [Int], _ sSnails: [Int]) -> Bool {
    let sSnailsReorder = [sSnails[2], sSnails[0], sSnails[1]]
    return zip(mSnails, sSnailsReorder).map{ $0.0 > $0.1 }.filter{ $0 == true }.count >= 2
}
mauriceWins([3, 5, 10], [4, 7, 11])
mauriceWins([6, 8, 9], [7, 12, 14])
mauriceWins([1, 8, 20], [2, 9, 100])



//MARK: Moving to the End
func moveToEnd(_ arr: [Int], _ el: Int) -> [Int] {
    return (arr.filter{$0 != el} + arr.filter{$0 == el})
}
moveToEnd([1, 3, 2, 4, 4, 1], 1)
moveToEnd([7, 8, 9, 1, 2, 3, 4], 9)



//MARK: The Conquering Queen
func canCapture(_ queens: [String]) -> Bool {
    let a1 = queens[0].utf8.map{Int($0)}
    let a2 = queens[1].utf8.map{Int($0)}
    
    return a1[0] == a2[0] || a1[1] == a2[1] || a1[0]-a2[0] == a1[1]-a2[1] || a1[0]+a1[1] == a2[0]+a2[1]
}
canCapture(["A1", "H8"])
canCapture(["A1", "C2"])
canCapture(["G3", "E5"])


//MARK: Return the Sum of the Two Smolest Numbers
func sumTwoSmallestNums(_ arr: [Double]) -> Double {
    return arr.filter{$0>0}.sorted().prefix(2).reduce(0, +)
}
sumTwoSmallestNums([19, 5, 42, 2, 77])
sumTwoSmallestNums([10, 343445353, 3453445, 3453545353453])
sumTwoSmallestNums([2, 9, 6, -1])
sumTwoSmallestNums([879, 953, 694, -847, 342, 221, -91, -723, 791, -587])
sumTwoSmallestNums([3683, 2902, 3951, -475, 1617, -2385])


//MARK: Increment to Top
func incrementToTop(_ arr: [Int]) -> Int {
    return arr.map{arr.max()! - $0}.reduce(0, +)
}
incrementToTop([3, 4, 5])
incrementToTop([4, 3, 4])
incrementToTop([3, 3, 3])
incrementToTop([3, 10, 3])


//MARK: Likes vs. Dislikes
func likeOrDislike(_ arr: [String]) -> String {
    var result = "Nothing"
    arr.map { result = result == $0 ? "Nothing" : $0 }
    return result
}
likeOrDislike(["Dislike"])
likeOrDislike(["Like", "Like"])
likeOrDislike(["Dislike", "Like"])
likeOrDislike(["Like", "Dislike", "Dislike"])



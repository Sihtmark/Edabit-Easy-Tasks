import UIKit
import SwiftUI
import os
import Foundation


//8. Largest Swap

func largestSwap(_ num: Int) -> Bool {
    var x = String(num)
    let y = x.removeLast()
    var z: String = ""
    z.append(y)
    let w = x.removeFirst()
    z.append(w)
    let a = Int(z) ?? 0
    if num >= a {
        return true
    } else {
        return false
    }
}
(largestSwap(14))
(largestSwap(53))
(largestSwap(99))

func largestSwap1(_ num: Int) -> Bool {
    var n = num
    var reverse: Int = 0
    while n != 0 {
        reverse *= 10
        reverse += (n % 10)
        n /= 10
    }
    if num >= reverse {
        return true
    } else {
        return false
    }
}
(largestSwap1(14))
(largestSwap1(53))
(largestSwap1(99))



//9. Upper or Lower Case

func stepsToConvert(_ str: String) -> Int {
    var x = 0
    var y = 0
    for i in str {
        if i.isLowercase {
            x += 1
        } else if i.isUppercase {
            y += 1
        }
    }
    if x < y {
        return x
    } else {
        return y
    }
}
(stepsToConvert("abC"))
(stepsToConvert("abCBA"))
(stepsToConvert("aba"))
(stepsToConvert("abaCCC"))



//10. Secret Society

func societyName(_ friends: [String]) -> String {
    var x: Character
    var z: [Character] = []
    var w: String = ""
    for i in friends {
        var y = i
        x = y.removeFirst()
        z.append(x)
    }
    z.sort()
    for i in z {
        w.append(i)
    }
    return w
}
(societyName(["Adam", "Sarah", "Malcolm"]))
(societyName(["Harry", "Newt", "Luna", "Cho"]))
(societyName(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"]))

var x: Double = 100
for _ in 1...300 {
    x *= 1.01
}
(x)
(" ")



//11. Spelling it Out

func spelling(_ str: String) -> [String] {
    var x = str
    var y: [String] = []
    var z: Int = 1
    var w: String = ""
    for _ in str {
        for _ in 1...z {
            w.append(x.removeFirst())
        }
        z += 1
        x = str
        y.append(w)
        w = ""
    }
    return y
}
(spelling("bee"))
(spelling("happy"))
(spelling("eagerly"))



//12. Sum of all Evens in a Matrix

func sumOfEvens(_ arr: [[Int]]) -> Int {
    let array = arr
    var newArray: [Int] = []
    for i in array {
        for e in i {
            if e.isMultiple(of: 2) {
                newArray.append(e)
            }
        }
    }
    var x: Int = 0
    for a in newArray {
        x += a
    }
    return x
}
(sumOfEvens([
    [1, 0, 2],
    [5, 5, 7],
    [9, 4, 3]
]))
(sumOfEvens([
    [1, 1],
    [1, 1]
]))
(sumOfEvens([
    [42, 9],
    [16, 8]
]))
(sumOfEvens([
    [],
    [],
    []
]))



//13. Get the Century

func century(_ year: Int) -> String {
    var centuryMath: Int = year / 100
    let hundriedInt: Int = year - centuryMath * 100
    if hundriedInt != 0 {
        centuryMath += 1
    }
    var sufix: String = "\(centuryMath)"
    switch centuryMath {
    case 1:
        sufix += "st"
    case 2:
        sufix += "nd"
    case 3:
        sufix += "rd"
    case 21:
        sufix += "st"
    default:
        sufix += "th"
    }
    return "\(sufix) century"
}
(century(1756))
(century(1555))
(century(1000))
(century(1001))
(century(2005))
(century(0001))
(century(0101))



//14. Numbers to Arrays and Vice Versa



//15. Nth Smallest Integer

func nthSmallest(_ arr: [Int], _ n: Int) -> Int? {
    var array = arr.sorted()
    let b = n - 1
    if n > arr.endIndex {
        return  nil
    } else {
        let a = array.remove(at: b)
        return a
    }
    
}
nthSmallest([1, 3, 5, 7], 1)
nthSmallest([1, 3, 5, 7], 3)
nthSmallest([1, 3, 5, 7], 5)
nthSmallest([7, 3, 5, 1], 2)




//16. Barbecue Skewers

func bbqSkewers(_ grill: [String]) -> [Int] {
    var vegetarian = 0
    var nonVegetarian = 0
    for i in grill {
        if i.contains("x") {
            nonVegetarian += 1
        } else {
            vegetarian += 1
        }
    }
    return [vegetarian, nonVegetarian]
}
(bbqSkewers( [
    "--oooo-ooo--",
    "--xx--x--xx--",
    "--o---o--oo--",
    "--xx--x--ox--",
    "--xx--x--ox--"
]))
(bbqSkewers([
    "--oooo-ooo--",
    "--xxxxxxxx--",
    "--o---",
    "-o-----o---x--",
    "--o---o-----"
]))



//17. Sort an Array by String Length

func sortByLength(_ arr: [String]) -> [String] {
    return arr.sorted { $0.count < $1.count}
}
(sortByLength(["Google", "Apple", "Microsoft"]))
(sortByLength(["Leonardo", "Michelangelo", "Raphael", "Donatello"]))













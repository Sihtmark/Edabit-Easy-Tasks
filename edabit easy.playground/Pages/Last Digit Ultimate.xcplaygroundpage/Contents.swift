//: [Previous](@previous)

import Foundation

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

//: [Previous](@previous)

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

//: [Previous](@previous)

import Foundation

//3. Pi to N Decimal Places

func myPi(_ n: Int) -> Double {
    let Pi = 3.141592653589793
    var x: Double = 1
    for _ in 1...n {
        x *= 10
    }
    let y = (Pi * x).rounded() / x
    return y
}
(myPi(5))
(myPi(4))
(myPi(15))

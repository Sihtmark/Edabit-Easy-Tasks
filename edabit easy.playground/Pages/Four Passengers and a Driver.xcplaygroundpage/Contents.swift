//: [Previous](@previous)

import Foundation

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

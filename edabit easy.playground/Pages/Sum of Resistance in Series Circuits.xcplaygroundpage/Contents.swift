//: [Previous](@previous)

import Foundation

//1. Sum of Resistance in Series Circuits
func seriesResistance(_ arr: [Double]) -> String {
    let sum = arr.reduce(0, +)
    return "\(sum) ohms"
}
(seriesResistance([1, 5, 6, 3]))
(seriesResistance([16, 3.5, 6]))
(seriesResistance([0.5, 0.5]))

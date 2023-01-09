//: [Previous](@previous)

import Foundation

//1. Sum of Resistance in Parallel Circuits
func parallelResistance(_ arr: [Double]) -> Double {
    return Double(String(format: "%.1f", (1 / (arr.map{1/$0}.reduce(0,+)))))!
}
parallelResistance([6, 3, 6])
parallelResistance([6, 3])
parallelResistance([10, 20, 10])
parallelResistance([500, 500, 500])

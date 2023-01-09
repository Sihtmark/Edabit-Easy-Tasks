//: [Previous](@previous)

import Foundation

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

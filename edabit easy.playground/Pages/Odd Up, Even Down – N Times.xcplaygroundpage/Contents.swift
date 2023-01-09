//: [Previous](@previous)

import Foundation

//5. Odd Up, Even Down – N Times
func evenOddTransform(_ arr: [Int], _ n: Int) -> [Int] {
    var array = arr
    var x = 0
    for i in array {
        x = i
        for _ in 1...n {
            if i % 2 == 0 {
                x -= 2
            } else {
                x += 2
            }
        }
        array.append(x)
    }
    for _ in 1...3 { array.removeFirst() }
    return array
}
(evenOddTransform([3, 4, 9], 3))
(evenOddTransform([0, 0, 0], 10))
(evenOddTransform([1, 2, 3], 1))

//: [Previous](@previous)

import Foundation

//4. Filter by Digit Length

func filterDigitLength(_ arr: [Int], _ num: Int) -> [Int] {
    var count: Int = 0
    var x: Int = 0
    var array: [Int] = []
    
    for int in arr {
        x = int
        while x > 0 {
            x /= 10
            count += 1
        }
        if count == num {
            array.append(int)
        }
        count = 0
        x = 0
    }
    return array
}
(filterDigitLength([88, 232, 4, 9721, 555], 3))
(filterDigitLength([2, 7, 8, 9, 1012], 1))
(filterDigitLength([32, 88, 74, 91, 300, 4050], 1))
(filterDigitLength([5, 6, 8, 9], 1))

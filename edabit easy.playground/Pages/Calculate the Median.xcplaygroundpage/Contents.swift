//: [Previous](@previous)

import Foundation

//4. Calculate the Median
func median(_ arr: [Double]) -> Double {
    let array = arr.sorted()
    let half: Int = array.count / 2 - 1
    if array.count % 2 != 0 {
        return array[half + 1]
    } else {
        return (array[half] + array[array.index(after: half)]) / 2
    }
}
(median([2, 5, 6, 2, 6, 3, 4]))
(median([21.4323, 432.54, 432.3, 542.4567]))
(median([-23, -43, -29, -53, -67]))

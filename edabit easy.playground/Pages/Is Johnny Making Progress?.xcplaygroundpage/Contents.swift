//: [Previous](@previous)

import Foundation

//3. Is Johnny Making Progress?

func progressDays(_ runs: [Int]) -> Int {
    var count = 1
    var anser = 0
    for i in runs {
        if count == runs.count {
            break
        } else if i < (runs[count]) {
            anser += 1
        }
        count += 1
    }
    return anser
}
(progressDays([3, 4, 1, 2]))
(progressDays([10, 11, 12, 9, 10]))
(progressDays([6, 5, 4, 3, 2, 9]))
(progressDays([9, 9]))

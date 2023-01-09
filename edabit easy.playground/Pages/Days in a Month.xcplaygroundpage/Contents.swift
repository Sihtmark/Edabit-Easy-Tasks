//: [Previous](@previous)

import Foundation

//10. Days in a Month
func days(_ month: Int, _ year: Int) -> Int {
    var dictionary = [1: 31, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31]
    var count = 2020
    var високосныйГод: [Int] = []
    while count != 0 {
        високосныйГод.append(count)
        count -= 4
    }
    if високосныйГод.contains(year) {
        dictionary[2] = 29
    } else {
        dictionary[2] = 28
    }
    let countOfDays = dictionary[month] ?? 0
    return countOfDays
}
(days(2, 2018))
(days(4, 654))
(days(2, 200))
(days(2, 1000))

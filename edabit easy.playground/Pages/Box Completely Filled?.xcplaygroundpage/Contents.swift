//: [Previous](@previous)

import Foundation

//3. Box Completely Filled?

func completelyFilled(_ arr: [String]) -> Bool {
    var x = 0
    for i in arr {
        if i.contains(" ") {
            x += 1
        }
    }
    if x == 0 {
        return true
    } else {
        return false
    }
}
(completelyFilled([
    "#####",
    "#***#",
    "#***#",
    "#***#",
    "#####"
]))
(completelyFilled([
    "#####",
    "#* *#",
    "#***#",
    "#***#",
    "#####"
]))
(completelyFilled([
    "##",
    "##"
]))

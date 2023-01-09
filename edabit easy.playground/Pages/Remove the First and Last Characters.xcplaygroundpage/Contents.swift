//: [Previous](@previous)

import Foundation

// Remove the First and Last Characters

func removeFirstLast(_ str: String) -> String {
    var newStr = str
    newStr.remove(at: newStr.startIndex)
    newStr.remove(at: newStr.index(before: newStr.endIndex))
    return newStr
}
removeFirstLast("Sergei")
removeFirstLast("Maardu")

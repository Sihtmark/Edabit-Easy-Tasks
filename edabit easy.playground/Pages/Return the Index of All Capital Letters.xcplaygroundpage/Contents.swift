//: [Previous](@previous)

import Foundation

//1. Return the Index of All Capital Letters

func indexOfCaps(_ str: String) -> [Int] {
    return str.enumerated().filter{$0.element.isUppercase}.map{$0.offset}
}
(indexOfCaps("eDaBiT"))
(indexOfCaps("eQuINoX"))
(indexOfCaps("determine"))
(indexOfCaps("STRIKE"))
(indexOfCaps("sUn"))

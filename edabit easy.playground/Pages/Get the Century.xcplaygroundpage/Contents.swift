//: [Previous](@previous)

import Foundation

//13. Get the Century

func century(_ year: Int) -> String {
    var centuryMath: Int = year / 100
    let hundriedInt: Int = year - centuryMath * 100
    if hundriedInt != 0 {
        centuryMath += 1
    }
    var sufix: String = "\(centuryMath)"
    switch centuryMath {
    case 1:
        sufix += "st"
    case 2:
        sufix += "nd"
    case 3:
        sufix += "rd"
    case 21:
        sufix += "st"
    default:
        sufix += "th"
    }
    return "\(sufix) century"
}
(century(1756))
(century(1555))
(century(1000))
(century(1001))
(century(2005))
(century(0001))
(century(0101))

//: [Previous](@previous)

import Foundation

//5. Split Item Codes

func splitCode(_ item: String) -> [Any] {
    let numbers: Set<Character> = ["0", "1" , "2", "3", "4", "5", "6", "7", "8", "9"]
    let numeric = item.filter { numbers.contains($0) }
    var alphabetic = item
    alphabetic.removeAll( where: { numbers.contains($0) } )
    return [alphabetic, numeric]
}
(splitCode("TEWA8392"))
(splitCode("MMU778"))
(splitCode("SRPE5532"))

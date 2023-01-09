//: [Previous](@previous)

import Foundation

//8. Is the Number Symmetrical

func isSymmetrical(_ num: Int) -> Bool {
    let string = String(num)
    var array: [Character] = []
    for i in string { array.append(i) }
    if array == array.reversed() {
        return true
    } else {
        return false
    }
}
(isSymmetrical(7227))
(isSymmetrical(12567))
(isSymmetrical(444444444))
(isSymmetrical(9939))
(isSymmetrical(1112111))

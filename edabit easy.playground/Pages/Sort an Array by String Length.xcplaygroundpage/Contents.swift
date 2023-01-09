//: [Previous](@previous)

import Foundation

//17. Sort an Array by String Length

func sortByLength(_ arr: [String]) -> [String] {
    return arr.sorted { $0.count < $1.count}
}
(sortByLength(["Google", "Apple", "Microsoft"]))
(sortByLength(["Leonardo", "Michelangelo", "Raphael", "Donatello"]))

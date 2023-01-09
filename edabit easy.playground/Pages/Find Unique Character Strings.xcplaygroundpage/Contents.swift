//: [Previous](@previous)

import Foundation

//6. Find Unique Character Strings

func filterUnique(_ arr: [String]) -> [String] {
    var array = [String]()
    func sort(_ input: String) -> Bool {
        return Set(input).count == input.count
    }
    for string in arr {
        if sort(string) == true {
            array.append(string)
        }
    }
    return array
}
(filterUnique(["abb", "abc", "abcdb", "aea", "bbb"]))
(filterUnique(["88", "999", "989", "9988", "9898"]))
(filterUnique(["ABCDE", "DDEB", "BED", "CCA", "BAC"]))

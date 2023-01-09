//: [Previous](@previous)

import Foundation

// State Names and abbreviations

func filterStateNames(_ arr: [String], _ type: String) -> [String] {
    var filteredArr: [String] = []
    if type == "full" {
        for state in arr {
            if state.count != 2 {
                filteredArr.append(state)
            }
        }
    } else {
        for state in arr {
            if state.count == 2 {
                filteredArr.append(state)
            }
        }
    }
    return filteredArr
}
filterStateNames(["Arizona", "CA", "NY", "Nevada"], "abb")
(filterStateNames(["Arizona", "CA", "NY", "Nevada"], "full"))
(filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "abb"))
(filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "full"))

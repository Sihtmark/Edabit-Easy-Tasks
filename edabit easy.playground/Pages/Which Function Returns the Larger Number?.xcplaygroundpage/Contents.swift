//: [Previous](@previous)

import Foundation

//4. Which Function Returns the Larger Number?

func larger(_ f: () -> Int, _ g: () -> Int) -> String {
    if f() > g() {
        return "f"
    } else if f() < g() {
        return "g"
    } else {
        return "neither"
    }
}
(larger({5}, {10}))
(larger({25}, {25}))
(larger({505050}, {5050}))

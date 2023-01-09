//: [Previous](@previous)

import Foundation

//11. Spelling it Out

func spelling(_ str: String) -> [String] {
    var x = str
    var y: [String] = []
    var z: Int = 1
    var w: String = ""
    for _ in str {
        for _ in 1...z {
            w.append(x.removeFirst())
        }
        z += 1
        x = str
        y.append(w)
        w = ""
    }
    return y
}
(spelling("bee"))
(spelling("happy"))
(spelling("eagerly"))

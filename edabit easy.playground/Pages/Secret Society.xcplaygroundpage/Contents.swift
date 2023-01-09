//: [Previous](@previous)

import Foundation

//10. Secret Society

func societyName(_ friends: [String]) -> String {
    var x: Character
    var z: [Character] = []
    var w: String = ""
    for i in friends {
        var y = i
        x = y.removeFirst()
        z.append(x)
    }
    z.sort()
    for i in z {
        w.append(i)
    }
    return w
}
(societyName(["Adam", "Sarah", "Malcolm"]))
(societyName(["Harry", "Newt", "Luna", "Cho"]))
(societyName(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"]))

var x: Double = 100
for _ in 1...300 {
    x *= 1.01
}
(x)
(" ")

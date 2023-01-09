//: [Previous](@previous)

import Foundation

// International Greetings

/*
 Suppose you have a guest list of students and the country they are from, stored as key-value pairs in a dictionary.

 GUEST_LIST = [
 "Randy": "Germany",
 "Karla": "France",
 "Wendy": "Japan",
 "Norman": "England",
 "Sam": "Argentina"
 ]
 Write a function that takes in a name and returns a name tag, that should read:

 "Hi! I'm [name], and I'm from [country]."
 If the name is not in the dictionary, return:

 "Hi! I'm a guest."

*/

let GUEST_LIST = [
    "Randy": "Germany",
    "Karla": "France",
    "Wendy": "Japan",
    "Norman": "England",
    "Sam": "Argentina"
]

func greeting(_ name: String) -> String {
    if GUEST_LIST[name] != nil {
        return "Hi! I'm \(name), and I'm from \(GUEST_LIST[name]!)."
    }
    return "Hi! I'm a guest."
}

greeting("Randy") // ➞ "Hi! I'm Randy, and I'm from Germany."

greeting("Sam") // ➞ "Hi! I'm Sam, and I'm from Argentina."

greeting("Monti") // ➞ "Hi! I'm a guest."

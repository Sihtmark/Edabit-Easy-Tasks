//: [Previous](@previous)

import Foundation

// Say Hello to Guests

/*
 In this exercise you will have to:

 Take a list of names.
 Add "Hello" to every name.
 Make one big string with all greetings.
 The solution should be one string with a comma in between every "Hello (Name)".
 */

func greetPeople(_ names: [String]) -> String {
    return String(names.map{String("Hello \($0)")}
                    .joined(separator: ", "))
}

greetPeople(["Joe"]) // ➞ "Hello Joe"

greetPeople(["Angela", "Joe"]) // ➞ "Hello Angela, Hello Joe"

greetPeople(["Frank", "Angela", "Joe"]) // ➞ "Hello Frank, Hello Angela, Hello Joe"

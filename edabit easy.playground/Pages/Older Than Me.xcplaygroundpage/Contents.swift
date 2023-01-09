//: [Previous](@previous)

import Foundation

// Older Than Me
/*
 Create a method in the Person struct which returns how another person's age compares. Given the instances p1, p2 and p3, which will be initialised with the attributes name and age, return a sentence in the following format:
 
 {other person name} is {older than / younger than / the same age as} me.
 */

struct Person {
    var name: String
    var age: Int
    
    func compareAge(_ p: Person) -> String {
        switch self {
        case _ where p.age > self.age:
            return "\(p.name) is older than me."
        case _ where p.age < self.age:
            return "\(p.name) is younger than me."
        case _ where p.age == self.age:
            return "\(p.name) is the same age as me."
        default: return ""
        }
    }
}

let p1 = Person(name: "Samuel", age: 24)
let p2 = Person(name: "Joel", age: 36)
let p3 = Person(name: "Lily", age: 24)

Person.compareAge(p1)
Person.compareAge(p2)
Person.compareAge(p3)

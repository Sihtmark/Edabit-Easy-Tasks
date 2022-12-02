import UIKit
import Foundation

//MARK: - Compare by ASCII Codes
//Create a function that compares two words based on the sum of their ASCII codes and returns the word with the smaller ASCII sum.
func asciiSort(_ arr: [String]) -> String {
    return arr[0].map{ String($0).unicodeScalars.first!.value }.reduce(0,+) >
    arr[1].map{ String($0).unicodeScalars.first!.value }.reduce(0,+) ? arr[1] : arr[0]
}
asciiSort(["hey", "man"]) // ➞ "man"
// ["h", "e", "y"] ➞ sum([104, 101, 121]) ➞ 326
// ["m", "a", "n"] ➞ sum([109, 97, 110]) ➞ 316

asciiSort(["majorly", "then"]) // ➞ "then"

asciiSort(["victory", "careless"]) // ➞ "victory"




//MARK: - GCD of Two Numbers
//Write a function that returns the greatest common divisor (GCD) of two integers.
func gcd(_ n1: Int, _ n2: Int) -> Int {
    return n2 == 0 ? n1 : gcd(n2, n1 % n2)
}
gcd(32, 8) // ➞ 8

gcd(8, 12) // ➞ 4

gcd(17, 13) // ➞ 1




//MARK: - Older Than Me
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






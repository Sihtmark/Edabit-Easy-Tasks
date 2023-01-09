//: [Previous](@previous)

import Foundation

//3. Shuffle the Name
func nameShuffle(_ str: String) -> String {
    return str.split(separator: " ").reversed().joined(separator: " ")
}
nameShuffle("Donald Trump")
nameShuffle("Rosie O'Donnell")
nameShuffle("Seymour Butts")

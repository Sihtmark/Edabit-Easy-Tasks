//: [Previous](@previous)

import Foundation

//16. Barbecue Skewers

func bbqSkewers(_ grill: [String]) -> [Int] {
    var vegetarian = 0
    var nonVegetarian = 0
    for i in grill {
        if i.contains("x") {
            nonVegetarian += 1
        } else {
            vegetarian += 1
        }
    }
    return [vegetarian, nonVegetarian]
}
(bbqSkewers( [
    "--oooo-ooo--",
    "--xx--x--xx--",
    "--o---o--oo--",
    "--xx--x--ox--",
    "--xx--x--ox--"
]))
(bbqSkewers([
    "--oooo-ooo--",
    "--xxxxxxxx--",
    "--o---",
    "-o-----o---x--",
    "--o---o-----"
]))

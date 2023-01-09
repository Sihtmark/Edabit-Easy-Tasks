//: [Previous](@previous)

import Foundation

//MARK: The Conquering Queen

/*
 In chess, queens can move any number of squares horizontally, vertically or diagonally.

 Given the location of your queen and your opponents' queen, determine whether or not you're able to capture your opponent's queen. Your location and your opponents' location are the first and second elements of the array, respectively.
 */

func canCapture(_ queens: [String]) -> Bool {
    let a1 = queens[0].utf8.map{Int($0)}
    let a2 = queens[1].utf8.map{Int($0)}
    
    return a1[0] == a2[0] || a1[1] == a2[1] || a1[0]-a2[0] == a1[1]-a2[1] || a1[0]+a1[1] == a2[0]+a2[1]
}

canCapture(["A1", "H8"]) // ➞ true
// Your queen can move diagonally to capture opponents' piece.

canCapture(["A1", "C2"]) // ➞ false
// Your queen cannot reach C2 from A1 (although a knight could).

canCapture(["G3", "E5"]) // ➞ true

//: [Previous](@previous)

import Foundation

// Simple Circle Collosion Detection

/*
 Create a function that returns true if the given circles are intersecting, otherwise return false. The circles are given as two arrays containing the values in the following order:

 Radius of the circle.
 Center position on the x-axis.
 Center position on the y-axis.
 */

func isCircleCollision(_ c1: [Int], _ c2: [Int]) -> Bool {
    let r1 = c1[0]
    let x1 = c1[1]
    let y1 = c1[2]
    
    let r2 = c2[0]
    let x2 = c2[1]
    let y2 = c2[2]
    let distX = x2 - x1
    let distY = y2 - y1
    
    return Double(r1 + r2) > sqrt(Double(distX*distX + distY*distY))
}

isCircleCollision([10, 0, 0], [10, 10, 10]) // ➞ true

isCircleCollision([1, 0, 0], [1, 10, 10]) // ➞ false

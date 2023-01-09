//: [Previous](@previous)

import Foundation

//1. Trace That Matrix
func trace(_ matrix: [[Int]]) -> Int {
    var answer = 0
    var count = 0
    for i in matrix {
        answer += i[count]
        count += 1
    }
    return answer
}
([[1, 4],[4, 1]])
([[1, 2, 3],[4, 5, 6],[7, 8, 9]])
([[1, 0, 1, 0],[0, 2, 0, 2],[3, 0, 3, 0],[0, 4, 0, 4]])

import Foundation

//3. Factor Chain

func factorChain(_ arr: [Int]) -> Bool {
    var x = 1
    for i in arr.reversed() {
        while x != arr.count {
            if i % arr.reversed()[x] == 0 {
                x += 1
            } else {
                return false
            }
        }
    }
    return true
}

(factorChain([1, 2, 4, 8, 16, 32]))
(factorChain([1, 1, 1, 1, 1, 1]))
(factorChain([2, 4, 6, 7, 12]))
(factorChain([10, 1]))
(factorChain([]))







































































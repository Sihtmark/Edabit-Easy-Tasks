//: [Previous](@previous)

import Foundation

//15. Nth Smallest Integer

func nthSmallest(_ arr: [Int], _ n: Int) -> Int? {
    var array = arr.sorted()
    let b = n - 1
    if n > arr.endIndex {
        return  nil
    } else {
        let a = array.remove(at: b)
        return a
    }
    
}
nthSmallest([1, 3, 5, 7], 1)
nthSmallest([1, 3, 5, 7], 3)
nthSmallest([1, 3, 5, 7], 5)
nthSmallest([7, 3, 5, 1], 2)

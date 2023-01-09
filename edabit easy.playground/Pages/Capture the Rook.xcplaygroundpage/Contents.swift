//: [Previous](@previous)

import Foundation

//4. Capture the Rook
func canCapture(_ rooks: [String]) -> Bool {
    return rooks[0]
        .map{$0}.first == rooks[1].map{$0}.first ||
        rooks[0].map{$0}.last == rooks[1].map{$0}.last
}
canCapture(["A8", "E8"])
canCapture(["A1", "B2"])
canCapture(["H4", "H3"])
canCapture(["F5", "C8"])

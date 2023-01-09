//: [Previous](@previous)

import Foundation

//7. Something in the Box?
func inBox(_ arr: [String]) -> Bool {
    var array = arr
    let first = array.removeFirst()
    let last = array.removeLast()
    for a in first { if a != "#" { return false }}
    for e in last { if e != "#" { return false }}
    for i in array { if i[i.startIndex] != "#" && i[i.endIndex] != "#" { return false }}
    var count = 0
    for o in array { for u in o { if u == "*" { count += 1 }}}
    if count == 0 { return false }
    return true
}
(inBox([
    "###",
    "#*#",
    "###"
]))
(inBox([
    "####",
    "#* #",
    "#  #",
    "####"
]))
(inBox([
    "*####",
    "# #",
    "#  #*",
    "####"
]))
(inBox([
    "#####",
    "#   #",
    "#   #",
    "#   #",
    "#####"
]))

//: [Previous](@previous)

import Foundation

//3. Remove the Special Characters from a String
func removeSpecialCharacters(_ str: String) -> String {
    var string = str
    let specialCharacters: [Character] = [".", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")"]
    string.removeAll(where: {specialCharacters.contains($0)})
    return string
}
(removeSpecialCharacters("The quick brown fox!"))
(removeSpecialCharacters("%fd76$fd(-)6GvKlO."))
(removeSpecialCharacters("D0n$c sed 0di0 du1"))


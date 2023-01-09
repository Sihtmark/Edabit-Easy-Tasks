import Foundation

//MARK: - The Karaca's Encryption Algorithm
/*
 Make a function that encrypts a given input with these steps:
 Input: "apple"
 Step 1: Reverse the input: "elppa"
 Step 2: Replace all vowels using the following chart:
 a => 0
 e => 1
 i => 2
 o => 2
 u => 3
 // "1lpp0"
 Step 3: Add "aca" to the end of the word: "1lpp0aca"
 Output: "1lpp0aca"
 */
func encrypt(_ word: String) -> String {
    return String(word.replacingOccurrences(of: "a", with: "0")
        .replacingOccurrences(of: "e", with: "1")
        .replacingOccurrences(of: "i", with: "2")
        .replacingOccurrences(of: "o", with: "2")
        .replacingOccurrences(of: "u", with: "3")
        .reversed() ) + "aca"
}
encrypt("banana") // ➞ "0n0n0baca"
encrypt("karaca") // ➞ "0c0r0kaca"
encrypt("burak") // ➞ "k0r3baca"
encrypt("alpaca") // ➞ "0c0pl0aca"

func encrypt1(_ word: String) -> String {
    let wordReversed = String(word.reversed())
    let vowelsToNumbers = {(i: String)->String in
        if i == "a"{
            return "0"
        }else if i == "e"{
            return "1"
        }else if i == "i" || i == "o"{
            return "2"
        }else if i == "u"{
            return "3"
        }else{
            return i
        }
    }
    return wordReversed.map({vowelsToNumbers(String($0))}).reduce("", +) + "aca"
}

func encrypt2(_ word: String) -> String {
    return word.reversed().map({
          var c = $0
        switch c {
            case "a": c = "0"
            case "e": c = "1"
            case "i": c = "2"
            case "o": c = "2"
            case "u": c = "3"
            default: break
        }
        return String(c)
    }).joined() + "aca"
}

func encrypt3(_ word: String) -> String {
    let dict: [String: String] = ["a": "0", "e": "1", "i": "2", "o": "2", "u": "3"]
     return word
        .reversed()
        .map { dict.keys.contains(String($0)) ? dict[String($0)]! : String($0) }
        .joined() + "aca"
}

func encrypt4(_ word: String) -> String {
  let vow: [Character: Character] = ["a": "0", "e": "1", "i": "2", "o": "2", "u": "3"]
  return String(word.reversed().map { vow[$0] != nil ? vow[$0]! : $0 }) + "aca"
}


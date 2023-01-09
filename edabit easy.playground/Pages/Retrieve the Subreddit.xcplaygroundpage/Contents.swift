//: [Previous](@previous)

import Foundation

//5. Retrieve the Subreddit
func subReddit(_ link: String) -> String {
    let name = link.replacingOccurrences(of: "https://www.reddit.com/r/", with: "")
    let name1 = name.replacingOccurrences(of: "/", with: "")
    return name1
}
(subReddit("https://www.reddit.com/r/funny/"))
(subReddit("https://www.reddit.com/r/relationships/"))
(subReddit("https://www.reddit.com/r/mildlyinteresting/"))

func subReddit1(_ link: String) -> String {
    var split = link.split(separator: "/")
    return String(split.removeLast())
}
(subReddit1("https://www.reddit.com/r/funny/"))
(subReddit1("https://www.reddit.com/r/relationships/"))
(subReddit1("https://www.reddit.com/r/mildlyinteresting/"))

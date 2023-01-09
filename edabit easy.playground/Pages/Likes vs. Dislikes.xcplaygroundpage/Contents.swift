//: [Previous](@previous)

import Foundation

//MARK: Likes vs. Dislikes

/*
 YouTube currently displays a like and a dislike button, allowing you to express your opinions about particular content. It's set up in such a way that you cannot like and dislike a video at the same time.

 There are two other interesting rules to be noted about the interface:

 Pressing a button, which is already active, will undo your press.
 If you press the like button after pressing the dislike button, the like button overwrites the previous "dislike" state. The same is true for the other way round.
 Create a function that takes an array of button inputs and returns the final state.
 */

func likeOrDislike(_ arr: [String]) -> String {
    var result = "Nothing"
    arr.map { result = result == $0 ? "Nothing" : $0 }
    return result
}
likeOrDislike(["Dislike"])
likeOrDislike(["Like", "Like"])
likeOrDislike(["Dislike", "Like"])
likeOrDislike(["Like", "Dislike", "Dislike"])

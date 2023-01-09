//: [Previous](@previous)

import Foundation

// Get the File Extension

// Write a function that maps files to their extension names.

func getExtension(_ arr: [String]) -> [String] {
    return arr.map{$0.components(separatedBy: ".")[1]}
}

getExtension(["code.html", "code.css"])
// ➞ ["html", "css"]

getExtension(["project1.jpg", "project1.pdf", "project1.mp3"])
// ➞ ["jpg", "pdf", "mp3"]

getExtension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"])
// ➞ ["rb", "cpp", "py", "js"]

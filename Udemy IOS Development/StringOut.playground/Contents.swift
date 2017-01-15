//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground"

var firstName = "Matthew"
var lastName = "Chung"
var age = 18
var fullName = firstName + " " + lastName;
fullName.append(" Jr.")

var  fullName2 = "\(firstName) \(lastName) is \(age)"

var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized

var annoyingChatroomGuy = "PLEASE HELP ME NOW!"
annoyingChatroomGuy = annoyingChatroomGuy.lowercased()

var sentence = "What the fetch?! Heck that is crazy!"
if sentence.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}
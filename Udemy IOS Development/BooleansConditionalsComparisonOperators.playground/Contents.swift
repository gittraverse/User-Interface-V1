//: Playground - noun: a place where people can play

import UIKit

var amICool: Bool = true;
amICool = false;

if(true==false || true==true) {
    print("What the heck");
}

var dataFinished: Bool = false;
//...
//...
if(!dataFinished) {
    print("Loading data...");
}
dataFinished = true;
//Load UI and other app features


//Equal to: ==
//Not equal to: !=
//Greater than: >
//Less thatn: <
var bankBalance = 400;
var itemToBuy = 400;

if(bankBalance >= itemToBuy) {
    print("purchased item");
}
if(itemToBuy > bankBalance) {
    print("Yous a broke boi");
}
if(bankBalance == itemToBuy) {
    print("You got 0 dollars now");
}

var amIatZero = itemToBuy == bankBalance

//Book titles
var title1 = "Harry Potter"
var title2 = "harry Potter"
if(title1 != title2) {
    print("Need to fix spelling.")
}
else if(title1.characters.count > 10) {
    print("Find a new title for the book.")
}
else {
    print("Book looks great. Send to printer.")
}

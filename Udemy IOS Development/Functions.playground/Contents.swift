//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Shape 1
var length = 5
var width = 10
var area = length * width

//Shape 2
var length2 = 6
var width2 = 12
var area2 = length2 * width2

//Areas using a function
func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
    //Could also do return length * width
}

let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 6, width: 2)
let shape3 = calculateArea(length: 4, width: 4)

//Buying shoes
func purchaseItem(currentBalance: inout Double, itemPrice: Double) {
    if(itemPrice<=currentBalance) {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice)")
    }
    else {
        print("Yous a broke boi!")
    }
}

var bankAccountBalance = 500.00
var shoes = 350.00
purchaseItem(currentBalance: &bankAccountBalance, itemPrice: shoes)

var lunchbox = 40.00;
purchaseItem(currentBalance: &bankAccountBalance, itemPrice: lunchbox)

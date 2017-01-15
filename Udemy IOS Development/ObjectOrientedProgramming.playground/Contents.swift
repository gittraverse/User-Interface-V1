//: Playground - noun: a place where people can play

import UIKit

//define a class
class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""

    func drive() {
        
    }
    func brake() {
        
    }
}




//creating objects or an instance of a class (passed by reference, not by value)
let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}
print(ford.model)
passByReference(vehicle: ford) //passed by reference
print(ford.model)



//pass by value
var someonesAge = 20
func passByValue(age: Int) -> Int{
    let newAge = age
    return newAge
}

print(passByValue(age: someonesAge))
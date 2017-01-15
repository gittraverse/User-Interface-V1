//: Playground - noun: a place where people can play

import UIKit

//Parent class
class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0.0
    
    init() {
            print("I am the parent")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    func brake(speedDecrease: Double) {
        
    }
}

//Child class
class SportsCar: Vehicle {
    override init() {
        super.init()
        print("I am the child")
        make = "BMW"
        model = "3 Series"
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

class Truck: Vehicle {
    override init() {
        super.init()
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease
    }
}

let car = SportsCar()
print(car.model!)
print(car.make!)
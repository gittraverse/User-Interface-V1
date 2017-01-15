//: Playground - noun: a place where people can play

import UIKit

//parent
class Shape {
    var area: Double?
    func calculateArea(valA: Double, valB: Double) -> Double {return 0}
}

//children have different logic in their functions
class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) -> Double {
        return (valA * valB) / 2
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double) -> Double {
        return valA * valB
    }
}

let newShape = Triangle()
print(newShape.calculateArea(valA: 12, valB: 12))

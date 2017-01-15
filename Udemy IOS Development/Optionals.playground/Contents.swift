//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int?
lotteryWinnings = 10;

//With optionals, always check if it has a value first THEN print
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

//Do it this way most of the time
if let winnings = lotteryWinnings {
    print(winnings)
}




//Car example
class Car {
    var model: String?
}

var vehicle: Car?
//print(vehicle?.model) does not crash because you're saying if it has a value, print, if not don't.

vehicle = Car()
vehicle?.model = "Bronco"
print(vehicle!)
print(vehicle!.model!)

if let v = vehicle, let m = v.model {
    print(m)
}

//Alternate Solution
/*if let v = vehicle {
    if let m = v.model {
        print(m)
    }
}*/




//Car example with Arrays
var cars: [Car]? = [Car]()

/*if let carArr = cars {
    if carArr.count > 0 {
        print(carArr)
    }
}*/

if let carArr = cars, carArr.count>0 {
    //only execute if not array is not nil and if more than 0 elements
    print(carArr)
} else {
    cars?.append(Car())
    //print(cars?.count)
}



//Implicitly unwrapped optional
class Person {
    private var _age: Int!
    //A getter for age. Called a "Computed Property"
    //Better solution would be to just set age = 0 and have the setter change it if it wants
    var age: Int {
        if _age == nil {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
print(jack.age)




//When you don't need a ! or ? use a CONSTRUCTOR
class Dog {
    var species: String
    //"init" is the constructor
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)




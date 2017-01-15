//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground";
print (str);

//declare 2 variables a and b
var a = 5;
var b = 1;
print(a+b);

if(a+b > 6) {
    print("true");
    }
else {
    print("false");
}


class Person {
    
    var name:String = "Initial name"
    
    init() {
        self.sayCheese()
    }
    
    func sayCheese() {
        print("Cheese")
    }
}

var firstPerson = Person()
firstPerson.name = "Alice"
firstPerson.name

var secondPerson = Person()
secondPerson.name = "Bob"

firstPerson.name

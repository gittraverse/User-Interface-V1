//: Playground - noun: a place where people can play

import UIKit

//Logical NOT operator - unary prefix operator
let allowedEntry = false;
if(!allowedEntry) {
    print("Access Denied");
}

let enteredDoorCode = true;
let passedRetinaScan = false;
let iAmTomCruise = false;

if(enteredDoorCode && passedRetinaScan || iAmTomCruise) {
    print("Welcome");
} else {
    print("Access Denied Again");
}

let hasDoorKey = false;
let knowsOverridePassword = true;
if(hasDoorKey || knowsOverridePassword) {
    print("Welcome");
} else {
    print("Access Denied ONCE AGAIN");
}
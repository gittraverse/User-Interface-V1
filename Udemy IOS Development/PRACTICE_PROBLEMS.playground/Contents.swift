//: Playground - noun: a place where people can play

import UIKit

//Arrays and Loops
var arr1 = [String]()
var arr2: [Double] = [0.0,0.1,0.2,0.3]
var arr5 = ["hey","my","name","is","matthew"]
arr1.append("yo")
arr1.append("ho")
arr1.append("so")
arr2.append(0.4)
arr2.append(0.5)
arr2.append(0.6)
arr5.remove(at: 1)
arr2.removeAll()
arr1.popLast()

var oddNumbers = [Int]()
for i in 0...100 {
    if(i%2==1) {
        oddNumbers.append(i)
    }
}
var sums = [Int]()
for i in 0..<oddNumbers.count {
    sums.append(5+oddNumbers[i])
}
var i = 0;
while i<sums.count {
    print("The sum is: 5+\(oddNumbers[i]) = \(sums[i])")
    i+=1;
}


//Section 3 Warmup
var arr3 = ["a", "b", "c"]
var arr4 = ["bo", "ro", "me"]
func combineArrays(arrOne: [String], arrTwo: [String]) -> [String] {
    var newArr = [String]()
    for i in 0..<arrOne.count {
        newArr.append(arrOne[i])
        newArr.append(arrTwo[i])
    }
    return newArr
}
print(combineArrays(arrOne: arr3, arrTwo: arr4))

//: Playground - noun: a place where people can play

import UIKit

//BAD WAY
var employee1Salary = 45000.0
var employee2Salary = 100000.0
var employee3Salary = 54000.0
var employee4Salary = 20000.0

employee1Salary = employee1Salary + (employee1Salary * 0.1)
employee2Salary = employee2Salary + (employee2Salary * 0.1)
employee3Salary = employee3Salary + (employee3Salary * 0.1)
employee4Salary = employee4Salary + (employee4Salary * 0.1)

//BETTER WAY
var salaries = [45000.0, 100000.0, 54000.0, 20000.0];
//salaries[0] = salaries[0] + (salaries[0]*0.1)
//salaries[1] = salaries[1] + (salaries[1]*0.1)
//...

//WHILE LOOPS
var x = 0;
while(x<salaries.count) {
    salaries[x] += (salaries[x]*0.1)
    x+=1;
}

//FOR IN LOOPS
for i in 0..<salaries.count {
    salaries[i] += (salaries[i]*0.1)
}

//FOR EACH LOOPS
for salary in salaries {
    print("Salary: \(salary)");
}
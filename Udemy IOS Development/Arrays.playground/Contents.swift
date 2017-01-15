//: Playground - noun: a place where people can play

import UIKit

var employee1Salary = 45000.0;
var employee2Salary = 54000.0;
var employee3Salary = 100000.0;
var employee4Salary = 20000.0;

var employeeSalaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0]
print(employeeSalaries.count)

employeeSalaries.append(39000.0)
print(employeeSalaries.count)

employeeSalaries.remove(at: 1)
print(employeeSalaries.count)

//Class of students
var students: [String] = [String]();
students.append("John")
students.append("Jose")
students.append("Matthew")
students.append("Nathan")
students.append("Gunguk")
students.remove(at: 1)
print(students);
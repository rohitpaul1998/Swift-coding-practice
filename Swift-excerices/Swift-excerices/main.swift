//
//  main.swift
//  Swift-excerices
//
//  Created by Rohit Paul on 1/26/24.
//

import Foundation

print("Yo, World!")

// Swift Varibales and Constants
var age: Int = 25
print("i just turned", age, "isnt this so exciting lol?")

let maxStudents: Int = 30
print("The max students allowed is", maxStudents)

var degreesFahrenheit: Int = 72
var degreesCelsiues: Int = (degreesFahrenheit - 32) * 5/9
print(degreesCelsiues)


// String Interpolation
var name: String = "Rohit Paul"
print("Hello, my name is \(name) and I am \(age) years old.")
print("I'm \(age) years old. Next year, I'll be \(age+1) years old.")


// Swift Data Types using type annotation (explicitly defining the type)
var myName: String = "Rohit Leonard Paul"
print("My name is \(myName).")

var myAge: Int = 25
print("I am \(myAge) years old.")

var priceDouble: Double = 3.14159265
print("For some reason, I woke up today thinking about this: \(priceDouble)")

var priceFloat: Float = 3.47
print("Anyway, I keep thinking about my current GPA, which is \(3.47). Sigh.")

var isAuthenticated: Bool = true
print("I think whats \(isAuthenticated) about all this struggle is that God is trying to push me to the victory he has place for me.")


// Swift Conditions - ex1
var A: Int = 4
var B: Int = 8
var C: Int = 4

if (A == B) {
    print("Both values are same")
}
else if (B == C) {
    print("Both values are same")
}
else if (A == C){
    print("Both values are same (A and C)")
}
else {
    print("Both values are not the same.")
}


// Swift Conditions - ex2
var bookA: Int = 14
var bookB: Int = 7
var bookC: Int = 21

if (bookA <= 0 || bookB <= 0 || bookC <= 0) {
    print("You have overdue books! Return them now.")
} else {
    print("You don't have to return the books now. You can keep them for a bit longer.")
}


// Swift Conditions - ex3
var Alice: Int = 85
var Bob: Int = 92

if (Alice > Bob) {
    print("Alice has the higher score!")
} else if (Bob > Alice) {
    print("Bob has the higher score!")
} else {
    print("Both Alice and Bob have the same score!!!")
}


// Swift optionals - ex1
//var optString: String? = "Hello, Optional!"
//if optString != nil {
//    print(optString)
//} else {
//    print("No value provided!")
//}

// Swift optionals - forced unwrapping - to get the actual value of the optional variable
var optString2: String? = "Hello, Optional2!"
if optString2 != nil {
    print(optString2!)
} else {
    print("No value provided!")
}

// Swift optionals - ex2
var optInteger: Int?

// Swift optionals - ex3
//var userInput: String?
//if userInput != nil {
//    print("User input received: \(userInput!)")
//} else {
//    print("No user input provided.")
//}

// Swift optionals - ex3 - rewriting the above code using guard-let
func getInput(userInput: String?) {
    guard let input = userInput else {
        print("No user input provided.")
        return
    }
    print("User input received: \(input)")
}

getInput(userInput: nil)
getInput(userInput: "Hello Dean.")



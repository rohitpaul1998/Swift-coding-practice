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


// Swift arrays - ex1 - array of integers
let exArray1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] /// created an integer array

let accessFourthElement = exArray1[exArray1.count - 4] /// counts the elements in the arrays and accesses the specific element by index
print("The fourth element is \(accessFourthElement)") /// prints the 4th element of the index from the back

let accessSeventhElement = exArray1[exArray1.count - 7] /// counts the elements in the arrays and accesses the specific element by index
print("The seventh element is \(accessSeventhElement)") /// prints the 7th element of the index from the back


// Swift arrays - ex2 - creating empty array and appending
var dummyArray: [Int] = [] /// creating an empty array
dummyArray.append(contentsOf: [2,4,6,8,10])
///note: I cannot use a constant 'let' to initialize an array and then later expect to append values to it
///I should use 'var' instead
print(dummyArray)


// Swift arrays - ex3 - creating a string array and removing items
var dummyArray1: [String] = []
dummyArray1.append(contentsOf: ["David","Viraj","Rohit","Pratik","Tarush"])
print(dummyArray1)
dummyArray1.remove(at: 2) /// this removed an element/item from an array at index level
print(dummyArray1)


// Swift loops - ex1 - for loop - print even nos from 1-20
let dumNums = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
//for num in dumNums {
//    print("testing.. testing.. \(num)")
//}
for num1 in dumNums {
    if num1 % 2 == 0 {
        print("the even number is: \(num1)")
    }
} /// this loop has an if condition to check if the modulus operation result is equivalent to 0. If true, it prints the number of the reference, which is 2 and then so on until 20.


// Swift loops - ex2 - printing numbers from 20 to 1 using for loop
for num2 in stride(from: 20, to: 1, by: -1) {
    print("The given number is \(num2)")
} /// stride from-to-by: Returns a sequence from a starting value to, but not including, an end value, stepping by the specified amount

for num3 in stride(from: 20, through: 1, by: -1) {
    print("The given number is \(num3)")
} /// stride-through-by: Returns a sequence from a starting value toward, and possibly including, an end value, stepping by the specified amount.

for num4 in dumNums.reversed() {
    print("The given number is \(num4)")
} /// reversed(): Returns a view presenting the elements of the collection in reverse order.

for num5 in (1...20).reversed() {
    print(num5)
} /// here instead of accessing the dumNums array i am making num5 as a constant by defining a range in the loop.


// Swift loops - ex3 - while loop - printing numbers from 20 to 1
var numb = 20
while numb > 0 {
    print(numb)
    numb = numb - 1
}


// Swift loops - ex5 - while loop - array of fruits and iterate over it to print each element
var fruitBasket = ["Apple","Banana","Cantaloupe","Dragronfruit","Grape","Jackfruit","Kiwi","Mango","Orange","Passionfruit","Raspberry","Strawberry"]

for fruit in fruitBasket {
    print("I ate a \(fruit) today")
}


// Swift loops - ex4 - for loop - Print the numbers 1-30 but skip any multiple of 3
for numRange in 1...30 {
    if numRange % 3 == 0 {
        continue
    }
    print("The remaining items are: \(numRange)")
} /// in for loops, If you want to skip an iteration item, you can use the continue keyword.


// Swift functions - ex1 - function named “sum” that adds two integers and returns the result.
func sum(a: Int, b: Int) -> Int {
    let result = a + b
    return result
}
print("The sum of the numbers are \(sum(a: 100, b: 100))")

func sum1(a:Float, b:Float) {
    print("The sum is \(a+b)")
}
sum1(a: 3.3, b: 3.8)


// Swift functions - ex2 - function called “concatenate” that takes two strings as parameters and returns their concatenation.
func concatenate(fName: String, lName: String) -> String {
    let actualName = fName + lName
    return actualName
}
print(concatenate(fName: "Rohit ", lName: "Paul"))


// Swift functions - ex3 -  function named “celsiusToFahrenheit” that converts a temperature in Celsius to Fahrenheit
func celsiusToFahrenheit(C: Int) -> Int {
    let F  = (9/5)*C + 32
    return F
}
print("Boston temperature rn is \(celsiusToFahrenheit(C: 1))")


// Swift functions - ex4 - function named “isEven” that takes an integer as input and returns true if it's even, false otherwise

/// below is an almost right attempt but wrong method
//func isEven(num: Int) -> Int {
//    if num / 2 == 1 {
//        print(true)
//    } else {
//        print(false)
//    }
//    return num
//}
//print(isEven(num: 2))

/// here is the right method
func isEven(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
print(isEven(number: 9))


// Swift functions - ex5 - function called “greet” that takes name as a parameter and returns a greeting message
func greet(name: String) -> String {
    return "Hi my name is \(name). So nice to meet you!"
}
print(greet(name: "Sam"))
/// or
func greetAgain(name1: String) -> String {
    let message = "Well, hello. My name is \(name1)"
    return message
}
print(greetAgain(name1: "Dean"))


// Swift enumerations - ex1 - Create a simple enum for weekdays. Print the enum cases
enum WeekDays: CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
print(WeekDays.allCases)


// Swift enumerations - ex2 - Define a direction enum with cases for left, right, up and down. Print a random direction.
enum Direction: CaseIterable {
    case left
    case right
    case up
    case down
}
print(Direction.allCases.randomElement()!)
/// The force unwrapping is required because there is a possibility of an enum having no cases and thus randomElement() would return nil


// Swift enumerations - ex3 -   Define a NetworkError enum with cases like noInternet, serverError, etc. Print a sample error case.
enum NetworkError {
    case noInternet
    case serverError
}
print(NetworkError.noInternet)
/// or
enum NetworkError1: CaseIterable {
    case noInternet
    case serverError
}
let errMsg = NetworkError1.serverError

switch errMsg {
case .noInternet:
    print("No internet!")
case .serverError:
    print("Server error!")
}


// Swift enumerations - ex4 - Declare an enum for app screens like home, settings, etc. Associate relevant data with each case.
enum AppScreens {
    case home(String, String, String)
    case settings(String, String, String)
}
var appScreen1 = AppScreens.home("Wallpaper", "Time", "Battery %")
var appScreen2 = AppScreens.settings("About", "General", "System")

/// in order to access each enumerated case value, we can use switch case statement
switch appScreen1 {
case .home(let wallpaper, let time, let battery):
    print("Here is my home wallpaper. It has a \(wallpaper), \(time) and a \(battery) icon")
case .settings(let about, let general, let system):
    print("Here are some basic settings in my phone: \(about), \(general) and \(system)")
}

switch appScreen2 {
case .home(let wallpaper, let time, let battery):
    print("Here is my home wallpaper. It has a \(wallpaper), \(time) and a \(battery) icon")
case .settings(let about, let general, let system):
    print("Here are some basic settings in my phone: \(about), \(general) and \(system)")
}


// Swift enumerations - ex5 - Create an enum for numeric digits with String value for each digit. Print the raw value of any case.
enum NumericDigits: String {
    case one = "1"
    case two = "2"
    case three = "5"
}
print(NumericDigits.three.rawValue)


// Swift optionals pt2 - ex1 - Create an optional String variable and check if it contains a value before printing it
var optString: String?
if let rawString = optString { /// here we use if let because we are checking if optString has a value. If it does, if let unwraps the value and assigns to rawString
    print("String found: \(rawString)")
} else {
    print("No string found!")
}


// Swift optionals pt2 - ex2 - Declare an optional Int variable. If it has a value, unwrap and print it.
var optInt: Int?
if let rawInt = optInt {
    print("Here is a sample number: \(rawInt)")
} else {
    print("I got nothing.")
}
/// another example:
//var optInt: Int? = 25
//if let rawInt = optInt {
//    print("Here is a sample number: \(rawInt)")
//} else {
//    print("I got nothing.")
//}
/// prints "Here is a sample number: 25"


// Swift optionals pt2 - ex3 - Write a function that takes an optional Double and returns the square of the number if not nil.
func math(inputA: Double?) -> Double {
    if let unrapA = inputA {
        return unrapA * unrapA
    } else {
        return 0
    }
}

print(math(inputA: nil))
print(math(inputA: 100))


// Swift optionals pt2 - ex4 - Declare two optional variables. Assign values if they are nil using ?? operator.
var optVar1: String?
var optVar2: String?

if optVar1 == nil {
    var newVar1 = optVar1 ?? "hello"
    print(newVar1)
}

if optVar2 == nil {
    var newVar2 = optVar2 ?? "World"
    print(newVar2)
}
/// ?? keyword helps to add data to the optional variable that was declared initially. Syntax: var someVariable = initialDeclaredOptionalVariable ?? someValue

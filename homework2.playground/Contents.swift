import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var number1: Float = 5.55
var number2: Float = 6.66
var sum: Double = Double(number1) + Double(number2)
print(sum)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 10
var numberTwo: Int = 5
let divOfNumbers: Int = numberOne / numberTwo
let remOfNumbers: Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(divOfNumbers), the remainder is \(remOfNumbers)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var macBookPrice: Int = 0
var macBookQty: Int = 5

if macBookQty >= 5 {
    macBookPrice = 900
} else if macBookQty >= 10 {
    macBookPrice = 850
} else if macBookQty < 5 {
    macBookPrice = 1000
}


print("new: \(macBookQty) MacBook Pro with the price of: \(macBookPrice) EUR, will cost you: \(macBookQty * macBookPrice) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge: String = "33a"
let convertToInt = Int(userInputAge)
if convertToInt == nil {
    print("can not be converted to Int")
} else {
    print("can be converted")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let yearOfBirth = 1996
let monthOfBirth = 12
let dayOfBirth = 25

var currentYear = 2021
var currentMonth = 11
var currentDay = 9

var totalYearsFromBirth, totalMonthFromBirth, totalDayFromBirth: Int

if currentMonth > monthOfBirth {
    totalYearsFromBirth = currentYear - yearOfBirth
} else if currentMonth == monthOfBirth && dayOfBirth < currentDay {
    totalYearsFromBirth = currentYear - yearOfBirth
} else {
    totalYearsFromBirth = currentYear - yearOfBirth - 1
}
    
print(totalYearsFromBirth)

totalMonthFromBirth = totalYearsFromBirth * 12 + currentMonth
totalDayFromBirth = totalYearsFromBirth * 365 + 313

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDayFromBirth) have passed")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */



switch monthOfBirth {
case 1...3:
    print("I was born in the 1 quarter")
case 4...6:
    print("I was born in the 2 quarter")
case 7...9:
    print("I was born in the 3 quarter")
case 10...12:
    print("I was born in the 4 quarter")
default:
    print("Wrong data!")
}

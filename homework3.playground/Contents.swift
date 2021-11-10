import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit = 500000.00
var rate = 0.05
var period: Int = 5
var profit: Double

for period in 1...period {
    profit = deposit * rate * Double(period)
    print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit + profit) Eur !")
}



/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var arrayOfInteger = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for i in 0..<arrayOfInteger.count {
    if arrayOfInteger[i] % 2 == 0 {
        print("My even numbers are: \(arrayOfInteger[i])")
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var counter1: Int = 1
var guessNumber = 5
for _ in 0...10000 {
    let number = Int.random(in: 0..<10)
    // print("After \(i + 1) shuffle number is \(number)")
    if number == guessNumber {
        break
    }
    counter1 += 1
}

print("Number \(guessNumber) will be after \(counter1) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 

 */

var startingHeight = 0
var finalHeight: Int

var counter = 0

repeat {
    finalHeight = startingHeight + 2
    startingHeight = finalHeight - 1
    counter += 1
    if finalHeight == 10 {
        break
    }
} while finalHeight != 10

print("bug will spend \(counter) days to reach top of the post")

import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

var myTeam: String = "Girls"
var resultsOfGames = [String : [String]]()

resultsOfGames["Brooklyn Nets"] = ["99:89", "109:99"]
resultsOfGames["Dallas Mavericks"] = ["87:93", "104:97"]
resultsOfGames["Washington Wizards"] = ["117:112", "107:122"]

for (teamName, score) in resultsOfGames {
    for i in score {
        print("\(myTeam) against \(teamName) scored - \(i)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var wallet: [Int] = [5, 100, 20, 500]

func calculateCash(wallet: [Int]) -> Int {
    var total = 0
    for i in wallet {
        total += i
    }
    return total
}

calculateCash(wallet: wallet)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
//
func isEvenNumber(number a: Int) -> Bool {
    let isEven: Bool
    if a % 2 == 0 {
        isEven = true
    } else {
        isEven = false
    }
    return isEven
}

isEvenNumber(number: 10)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from a: Int, to b: Int) -> [Int] {
    var newArray: [Int] = []

    for i in a...b  {
        newArray.append(i)
    }
    return newArray
}

print(createArray(from: 1, to: 10))


/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 
 */

var array = createArray(from: 1, to: 10)
for i in array {
    if isEvenNumber(number: i) {
       array.remove(at: array.firstIndex(of: i) ?? 0)
    }
}
print(array)

//Simple solution: array.removeAll(where: { isEvenNumber(number: $0) })



import Foundation

var globalArrayFirstAndLastNumber = [Int]()
var globalNumber = 0
var globalOperation = ""
var hystoryCalculation = [String]()

var playCalculator = true
while playCalculator {
    let numOne = "Введіть перше число"
    let numTwo = "Введіть друге число"
    
    inputOperation()
    inputNumbers(numOne)
    firstNumberNoEmpty = true
    inputNumbers(numTwo)
    
    let result = calculation(globalArrayFirstAndLastNumber[0], globalArrayFirstAndLastNumber[1], globalOperation)
    print("Результат: \(globalArrayFirstAndLastNumber[0]) \(globalOperation) \(globalArrayFirstAndLastNumber[1]) = \(result)")
    
    let hystory = "\(globalArrayFirstAndLastNumber[0]) \(globalOperation) \(globalArrayFirstAndLastNumber[1]) = \(result)"
    hystoryCalculation.append(hystory)
    
    print("Переглянути історію обчислень? 'y' - Так    'n' - Ні")
    var continueHystory = true
    while continueHystory {
        if let browsingHistory = readLine(), !browsingHistory.isEmpty {
            let operation = String(browsingHistory)
            if operation == "y" {
                for i in hystoryCalculation {
                    print(i)
                }
                continueHystory = false
            } else if operation == "n" {
                continueHystory = false
            } else {
                print("Ви ввели не коректні дані, спробуйте ще раз")
                continueHystory = true
            }
        }
    }

    
    print("Бажаєте продовжити? Якщо так введіть: 'y',  або якщо бажаєте завершити введіть 'n'")
    wantToContinue()
}


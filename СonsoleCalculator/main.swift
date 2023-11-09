import Foundation

var globalFirstNumber = 0
var globalLastNumber = 0
var globalOperation = ""
var hystoryCalculation = [String]()

var playCalculator = true
while playCalculator {
    let firstNumber = InputNumders()
    let lastNumber = InputNumders()
    
    inputOperation()
    firstNumber.inputFirstNumber()
    lastNumber.inputLastNumber()
    
    let result = calculation(globalFirstNumber, globalLastNumber, globalOperation)
    print("Результат: \(globalFirstNumber) \(globalOperation) \(globalLastNumber) = \(result)")
    
    var hystory = "\(globalFirstNumber) \(globalOperation) \(globalLastNumber) = \(result)"
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


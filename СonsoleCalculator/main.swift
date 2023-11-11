import Foundation

var globalArrayFirstAndLastNumber = [Int]()
var globalOperation: Operation = .plus
var hystoryCalculation = [String]()

repeat {
    
    print("Введіть будь ласка операцію яку ви хочете зробити, ось операції якими я вмію користуватися: +  -  *  /  %")
    let inputOperation = InputOperation()
    var inputNumber = InputNumbers()
    let calculation = Calculation()
    
    inputOperation.inputOperation()
    print("Введіть перше число")
    inputNumber.numberCheck()
    print("Введіть друге число")
    let numTwo = "Введіть друге число"
    inputNumber.numberCheck()
    
    let result = calculation.calculate(globalArrayFirstAndLastNumber[0], globalArrayFirstAndLastNumber[1], globalOperation)
    print("Результат: \(globalArrayFirstAndLastNumber[0]) \(globalOperation.rawValue) \(globalArrayFirstAndLastNumber[1]) = \(result)")
    
    let hystory = "\(globalArrayFirstAndLastNumber[0]) \(globalOperation.rawValue) \(globalArrayFirstAndLastNumber[1]) = \(result)"
    hystoryCalculation.append(hystory)
    
    print("якщо бажаєте переглянути історію обчислень нажміть 'y'  якщо ні то любу іншу клавішу")
    while readLine() == "y" {
        for i in hystoryCalculation {
            print(i)
        }
    }

    globalArrayFirstAndLastNumber.removeAll()
    print("Якщо бажаєте завершити введіть 'n', для продовження нажміть любу клавішу.")
} while readLine() != "n"


import Foundation

var hystoryCalculation = [String]()

repeat {
    
    print("Введіть будь ласка операцію яку ви хочете зробити, ось операції якими я вмію користуватися: +  -  *  /  %")
    let inputOperation = InputFromTheUser()
    let inputNumber = InputFromTheUser()
    let calculation = Calculation()
    
    let operation = inputOperation.readTheOperation()
    
    print("Введіть перше число")
    let firstNumber = inputNumber.numberCheck()
    
    print("Введіть друге число")
    let lastNumber = inputNumber.numberCheck()
    
    let result = try calculation.calculate(firstNumber, lastNumber, operation)
    print("Результат: \(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)")
    
    let hystory = "\(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)"
    hystoryCalculation.append(hystory)
    
    print("якщо бажаєте переглянути історію обчислень нажміть 'y'  якщо ні то любу іншу клавішу")
    while readLine() == "y" {
        for i in hystoryCalculation {
            print(i)
        }
    }

    print("Якщо бажаєте завершити введіть 'n', для продовження нажміть любу клавішу.")
} while readLine() != "n"


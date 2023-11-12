import Foundation

var hystoryCalculation = [String]()

repeat {
    
    var result: Int = 0
    let inputOperation = InputReader()
    let inputNumber = InputReader()
    let calculation = Calculator()
    
    print("Введіть будь ласка операцію яку ви хочете зробити, ось операції якими я вмію користуватися: +  -  *  /  %")
    
    let operation = inputOperation.getOperation()
    
    print("Введіть перше число")
    let firstNumber = inputNumber.getNumber()
    
    print("Введіть друге число")
    let lastNumber = inputNumber.getNumber()
    
    do {
        result = try calculation.calculate(firstNumber, lastNumber, operation)
    } catch {
        print("На нуль ділити не можна")
    }

    print("Результат: \(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)")
    
    let hystory = "\(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)"
    hystoryCalculation.append(hystory)
    
    print("якщо бажаєте переглянути історію обчислень нажміть 'y'  якщо ні то любу іншу клавішу")
    while readLine() == "y" {
        for i in hystoryCalculation {
            print(i)
        }
        break
    }

    print("Якщо бажаєте завершити введіть 'n', для продовження нажміть любу клавішу.")
} while readLine() != "n"


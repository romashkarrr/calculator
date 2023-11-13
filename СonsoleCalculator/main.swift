import Foundation

var hystoryCalculation = [String]()

repeat {
    
    var result: Int = 0
    var number = CheckNumber()
    var operation:Operation = .division
    let inputDate = InputReader()
    let calculation = Calculator()
    
    print("Введіть будь ласка операцію яку ви хочете зробити, ось операції якими я вмію користуватися: +  -  *  /  %")
    var continueLoop = true
    repeat {
        do {
            operation = try inputDate.getOperation()
            continueLoop = false
        } catch InputReaderError.lineNoOperation {
            print("Не коректні дані")
            continueLoop = true
        }
    } while continueLoop
    
    print("Введіть перше число")
    var firstNumber = number.check()
    
    print("Введіть друге число")
    var lastNumber = number.check()
    
    do {
        result = try calculation.calculate(firstNumber, lastNumber, operation)
    } catch CalculationError.divisionByZero {
        print("Не коректні дані")
    }

    print("Результат: \(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)")
    
    let hystory = "\(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)"
    hystoryCalculation.append(hystory)
    
    print("якщо бажаєте переглянути історію обчислень нажміть 'y'  якщо ні то любу іншу клавішу")
    if readLine() == "y" {
        for i in hystoryCalculation {
            print(i)
        }
    }

    print("Якщо бажаєте завершити введіть 'n', для продовження нажміть любу клавішу.")
} while readLine() != "n"


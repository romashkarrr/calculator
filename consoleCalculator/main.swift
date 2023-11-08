import Foundation

var globalFirstNumber = 0
var globalLastNumber = 0
var globalOperation = ""

var playCalculator = true
while playCalculator {
    
    inputOperation()
    inputFirstNumber()
    inputLastNumber()
    
    let result = calculation(globalFirstNumber, globalLastNumber, globalOperation)
    print("Результат: \(globalFirstNumber) \(globalOperation) \(globalLastNumber) = \(result)")
    print("Бажаєте продовжити? Якщо так введіть: 'y',  або якщо бажаєте завершити введіть 'n'")
    wantToContinue()
}


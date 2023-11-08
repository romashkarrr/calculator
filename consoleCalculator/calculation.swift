import Foundation

// Обчислення прикладу
func calculation (_ firstNumber: Int,_  lastNumber: Int,_ operation: String) -> Int {
    switch operation {
    case "+":
        return firstNumber + lastNumber
    case "-":
        return firstNumber - lastNumber
    case "*":
        return firstNumber * lastNumber
    case "/":
        return firstNumber / lastNumber
    case "%":
        return firstNumber % lastNumber
    default:
        return 0
    }
}


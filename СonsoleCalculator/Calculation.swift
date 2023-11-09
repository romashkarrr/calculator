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
        if lastNumber == 0 {
            print("На 0 ділити не можна")
            return 0
        } else {
            return firstNumber / lastNumber
        }
    case "%":
        return firstNumber % lastNumber
    default:
        return 0
    }
}


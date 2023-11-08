import Foundation

func wantToContinue() {
    var continueCalculation = true
    while continueCalculation {
        if let userOperation = readLine(), !userOperation.isEmpty {
            let operation = String(userOperation)
            if operation == "y" {
                playCalculator = true
                continueCalculation = false
            } else if operation == "n" {
                playCalculator = false
                continueCalculation = false
            } else {
                print("Ви ввели не коректні дані, спробуйте ще раз")
                continueCalculation = true
            }
        }
    }
}

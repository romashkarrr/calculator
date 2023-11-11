import Foundation

func wantToContinue() {
    var continueCalculation = true
    while continueCalculation {
        if let userOperation = readLine(), !userOperation.isEmpty {
            let operation = String(userOperation)
            if operation == "y" {
                continueCalculation = false
            } else if operation == "n" {
                continueCalculation = false
                break
            } else {
                print("Ви ввели не коректні дані, спробуйте ще раз")
                continueCalculation = true
            }
        }
    }
}

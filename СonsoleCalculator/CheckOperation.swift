import Foundation

struct CheckOperation {
    func checking() -> Operation{
        var operationCheck:Operation = .division
        let inputDate = InputReader()
        var continueLoop = true
        repeat {
            do {
                operationCheck = try inputDate.getOperation()
                continueLoop = false
            } catch InputReaderError.lineNoOperation {
                print("Не коректні дані")
                continueLoop = true
            } catch {
                print("Інша помилка")
                continueLoop = true
            }
        } while continueLoop
        return operationCheck
    }
}

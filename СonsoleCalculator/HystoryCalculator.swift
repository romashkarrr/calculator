import Foundation

struct Hystory {
    func writeInHistory() -> [String]{
        var result: Int = 0
        var hystoryCalculation = [String]()
        let inputNumber = InputReader()
        let inputOperation = InputReader()
        let operation = inputOperation.getOperation()
        let firstNumber = inputNumber.getNumber()
        let lastNumber = inputNumber.getNumber()
        let hystory = "\(firstNumber) \(operation.rawValue) \(lastNumber) = \(result)"
        hystoryCalculation.append(hystory)
        return hystoryCalculation
    }
}

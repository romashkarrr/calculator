import Foundation

struct HistoryCalculator {
    var hystoryCalculation = [String]()
    let result: Int = 0
    let inputOperation = InputReader()
    let inputNumber = InputReader()
    let operation = inputOperation.getOperation()
    let firstNumber = inputNumber.getNumber()
    let lastNumber = inputNumber.getNumber()
    mutating func writeInHistory() -> [String] {
        let hystory = "\(self.firstNumber) \(self.operation.rawValue) \(self.lastNumber) = \(self.result)"
        self.hystoryCalculation.append(hystory)
        return hystoryCalculation
    }
}

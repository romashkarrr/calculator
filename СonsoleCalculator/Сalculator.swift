import Foundation

struct Calculator {
    func calculate(_ firstNumber: Int, _ lastNumber: Int, _ operation: Operation) throws -> Int {
        switch operation {
        case .plus:
            return firstNumber + lastNumber
        case .minus:
            return firstNumber - lastNumber
        case .multyplay:
            return firstNumber * lastNumber
        case .division:
            guard lastNumber != 0 else {
                throw CalculationError.divisionByZero
            }
            return firstNumber / lastNumber
        case .remainderFromDivision:
            return firstNumber % lastNumber
        }
    }
}

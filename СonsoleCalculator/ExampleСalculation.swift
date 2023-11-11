import Foundation

struct Calculation {
    let enumOperation = InputOperation()
    func calculate( _ firstNumber: Int, _  lastNumber: Int, _ operation: Operation) -> Int {
        switch operation {
        case .plus:
            return firstNumber + lastNumber
        case .minus:
            return firstNumber - lastNumber
        case .multyplay:
            return firstNumber * lastNumber
        case .division:
            if lastNumber == 0 {
                print("На 0 ділити не можна")
                return 0
            } else {
                return firstNumber / lastNumber
            }
        case .remainderFromDivision:
            return firstNumber % lastNumber
        }
    }
}

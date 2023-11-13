import Foundation

struct InputReader {
    
    func getNumber() throws -> Int {
        guard let userInputNumer = readLine(), let userNumber = Int(userInputNumer) else {
            throw InputReaderError.lineNoInt
        }
        return userNumber
    }
    
    func getOperation() throws -> Operation{
        if let userOperation = readLine(), let operation = Operation(rawValue: userOperation) {
            switch operation {
            case .plus:
                return operation
            case .minus:
                return operation
            case .multyplay:
                return operation
            case .division:
                return operation
            case .remainderFromDivision:
                return operation
            }
        } else {
            throw InputReaderError.lineNoOperation
        }
    }
}

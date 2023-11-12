import Foundation

struct InputReader {
    
    func getNumber() -> Int {
        repeat {
            if let userInputNumer = readLine(), let userNumber = Int(userInputNumer) {
                return userNumber
            } else {
                print("Не коректні дані")
            }
        } while true
    }
    
    func getOperation() -> Operation{
        repeat {
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
                print("Не коректні дані")
            }
        } while true
    }
}

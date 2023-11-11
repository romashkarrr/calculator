import Foundation

struct InputFromTheUser {
    
    func numberCheck() -> Int {
        if let userInputNumer = readLine(), let userNumber = Int(userInputNumer) {
            return userNumber
        } else {
            print("Не коректні дані")
        }
        return 1
    }
    
    func readTheOperation() -> Operation{
        if let userOperation = readLine(), !userOperation.isEmpty {
            let operation = Operation(rawValue: userOperation)
            switch operation! {
            case .plus:
                return operation!
            case .minus:
                return operation!
            case .multyplay:
                return operation!
            case .division:
                return operation!
            case .remainderFromDivision:
                return operation!
            }
        } else {
            return .plus
        }
    }
}

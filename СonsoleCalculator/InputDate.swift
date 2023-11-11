import Foundation

struct InputNumbers {
    func numberCheck() {
        if let userInputNumer = readLine(), let firstNumber = Int(userInputNumer) {
            globalArrayFirstAndLastNumber.append(firstNumber)
            print("Ваше число: \(firstNumber)")
        } else {
            print("Ви не ввели нічого або ввели не число, повторіть будь ласка вашу спробу.")

        }
    }
}

struct InputOperation {
    func inputOperation() {
        var operationNoEmpty = true
        while operationNoEmpty {
            if let userOperation = readLine(), !userOperation.isEmpty {
                let operation = Operation(rawValue: userOperation)
                globalOperation = operation!
                switch operation {
                case .plus:
                    print("Ви обрали операцію: \(operation!.rawValue)")
                    operationNoEmpty = false
                case .minus:
                    print("Ви обрали операцію: \(operation!.rawValue)")
                    operationNoEmpty = false
                case .multyplay:
                    print("Ви обрали операцію: \(operation!.rawValue)")
                    operationNoEmpty = false
                case .division:
                    print("Ви обрали операцію: \(operation!.rawValue)")
                    operationNoEmpty = false
                case .remainderFromDivision:
                    print("Ви обрали операцію: \(operation!.rawValue)")
                    operationNoEmpty = false
                default:
                    print("На жаль ви ввели операцію якою я не вмію користуватися")
                    operationNoEmpty = true
                }
            } else { // Якщо введені дані nil або пустий рядок, то повертається повіддомлення і цикл працює знову.
                print("На жаль ви нічого не ввели.")
                operationNoEmpty = true
            }
        }
    }
}

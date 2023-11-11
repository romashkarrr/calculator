import Foundation

enum Operation: String {
    case plus = "+"
    case minus = "-"
    case multyplay = "*"
    case division = "/"
    case remainderFromDivision = "%"
}

// Вводимо операцію
func inputOperation() {
    var operationNoEmpty = true
    print("Введіть будь ласка операцію яку ви хочете зробити, ось операції якими я вмію користуватися: +  -  *  /  %")
    while operationNoEmpty {
        if let userOperation = readLine(), !userOperation.isEmpty { // Перевіряємо чи введені дані не nil і якщо там щось є то іде перевірка на пустоту.
            let operation = Operation(rawValue: userOperation) // Якшо не nil то конвертується в рядок і призначається змінній.
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

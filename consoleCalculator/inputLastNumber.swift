import Foundation

// Введення другого числа
func inputLastNumber() {
    var lastNumberNoEmpty = true
    while lastNumberNoEmpty {
        print("Введіть друге число:")
        if let userInputLastNumder = readLine(), let lastNumber = Int(userInputLastNumder) {
            globalLastNumber = lastNumber
            print("Ваше друге число: \(lastNumber)")
            lastNumberNoEmpty = false
        } else {
            print("Ви не ввели нічого або ввели не число, повторіть будь ласка вашу спробу.")
            lastNumberNoEmpty = true
        }
    }
}

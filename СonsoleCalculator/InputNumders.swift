import Foundation

class InputNumders {
    func inputFirstNumber() {
        var firstNumberNoEmpty = true
        while firstNumberNoEmpty {
            print("Введіть перше число:")
            if let userInputFirstNumer = readLine(), let firstNumber = Int(userInputFirstNumer) {
                globalFirstNumber = firstNumber
                print("Ваше перше число: \(firstNumber)")
                firstNumberNoEmpty = false
            } else {
                print("Ви не ввели нічого або ввели не число, повторіть будь ласка вашу спробу.")
                firstNumberNoEmpty = true
            }
        }
    }
    
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
}


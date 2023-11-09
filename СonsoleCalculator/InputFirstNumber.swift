import Foundation

// Введення першого числа
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

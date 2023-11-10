import Foundation

var firstNumberNoEmpty = true

func inputNumbers(_ countNumber: String) {
    print(countNumber)
    while firstNumberNoEmpty {
        numberCheck()
    }
}

func numberCheck() {
    if let userInputNumer = readLine(), let firstNumber = Int(userInputNumer) {
        globalArrayFirstAndLastNumber.append(firstNumber)
        print("Ваше число: \(firstNumber)")
        firstNumberNoEmpty = false
    } else {
        print("Ви не ввели нічого або ввели не число, повторіть будь ласка вашу спробу.")
        firstNumberNoEmpty = true
    }
}



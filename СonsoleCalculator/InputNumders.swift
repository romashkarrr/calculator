import Foundation

var numberNoEmpty = true

func inputNumbers(_ countNumber: String) {
    print(countNumber)
    numberNoEmpty = true
    while numberNoEmpty {
        numberCheck()
    }
}

func numberCheck() {
    if let userInputNumer = readLine(), let firstNumber = Int(userInputNumer) {
        globalArrayFirstAndLastNumber.append(firstNumber)
        print("Ваше число: \(firstNumber)")
        numberNoEmpty = false
    } else {
        print("Ви не ввели нічого або ввели не число, повторіть будь ласка вашу спробу.")
        numberNoEmpty = true
    }
}



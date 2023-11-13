import Foundation

struct CheckNumber {
    let inputDate = InputReader()
    func check() -> Int {
        var firstNumber = 0
        var continueLoop = true
        repeat {
            do {
                firstNumber = try inputDate.getNumber()
                continueLoop = false
            } catch InputReaderError.lineNoInt {
                print("Не коректні дані")
                continueLoop = true
            } catch {
                print("Інша помилка")
                continueLoop = true
            }
        } while continueLoop
        return firstNumber
    }
}

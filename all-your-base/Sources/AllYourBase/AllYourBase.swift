import Foundation

enum BaseError: Error {
    case invalidInputBase
    case negativeDigit
    case invalidPositiveDigit
    case invalidOutputBase
}

struct Base {
    static func outputDigits(inputBase: Int, inputDigits: [Int], outputBase: Int) throws -> [Int] {
        guard inputBase > 1 else {
            throw BaseError.invalidInputBase
        }
        guard outputBase > 1 else {
            throw BaseError.invalidOutputBase
        }
        guard inputDigits.allSatisfy({ $0 >= 0 }) else {
            throw BaseError.negativeDigit
        }
        guard inputDigits.allSatisfy({ $0 < inputBase }) else {
            throw BaseError.invalidPositiveDigit
        }
        
        let digits = inputDigits.drop { $0 == 0 }
        
        guard !digits.isEmpty else {
            return [0]
        }
        
        var number = digits.reduce(0) { $0 * inputBase + $1 }
        var outputDigits = [Int]()
        
        while number > 0 {
            outputDigits.append(number % outputBase)
            number /= outputBase
        }
        return outputDigits.reversed()
    }
}

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
        
        let outputDigits: [Int]
        for (_, digit) in inputDigits.reversed().enumerated() {
            guard digit >= 0 else {
                throw BaseError.negativeDigit
            }
            guard digit < inputBase else {
                throw BaseError.invalidPositiveDigit
            }
        }
        let baseTenDigits: [Int]
        if inputBase != 10 {
            baseTenDigits = convertToBaseTen(inputBase: inputBase, inputDigits: inputDigits)
        } else {
            baseTenDigits = inputDigits
        }
        if outputBase != 10 {
            outputDigits = convertFromBaseTen(inputDigits: baseTenDigits, outputBase: outputBase)
        } else {
            outputDigits = baseTenDigits
        }
        
        return outputDigits.isEmpty ? [0] : outputDigits
    }
    
    private static func convertToBaseTen(inputBase: Int, inputDigits: [Int]) -> [Int] {
        var outputNumber = 0
        for (exponent, digit) in inputDigits.reversed().enumerated() {
            outputNumber += digit * (inputBase ** exponent)
        }
        return outputNumber.toDigitsArrayWith(base: 10)
    }
    
     static func convertFromBaseTen(inputDigits: [Int], outputBase: Int) -> [Int] {
        var outputDigits = [Int]()
        var inputNumber = 0;
        for (exponent, digit) in inputDigits.reversed().enumerated() {
            inputNumber += digit * (10 ** exponent)
        }
        while (inputNumber != 0){
            outputDigits.append(inputNumber % outputBase)
            inputNumber /= outputBase;
        }
        
        return outputDigits.reversed()
    }
}

extension Int {
    public func toDigitsArrayWith(base: Int) -> [Int] {
        var digits = [Int]()
        var number = self
        while number > 0 {
            digits.append(number % base)
            number /= base
        }
        return digits.reversed()
    }
}

precedencegroup Exponentiative {
    associativity: left
    higherThan: MultiplicationPrecedence
}

infix operator ** : Exponentiative

public func ** <N: BinaryInteger>(base: N, power: N) -> N {
    return N.self( pow(Double(base), Double(power)) )
}

public func ** <N: BinaryFloatingPoint>(base: N, power: N) -> N {
    return N.self ( pow(Double(base), Double(power)) )
}


@main
struct Main {
    public static func main() {
        do {
            print(try Base.outputDigits(inputBase: 10, inputDigits: [1,3,9], outputBase: 11))
        } catch {
            print(error)
        }
        
//        print(154.toDigitsArrayWith(base: 10))
//
//        print(Base.convertToBaseTen(inputBase: 2, inputDigits: [0,1,1,0]))
//        print(Base.convertFromBaseTen(inputDigits: [138], outputBase: 6))
    }
}

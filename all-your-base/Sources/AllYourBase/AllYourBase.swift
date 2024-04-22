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
        
        var outputDigits = [Int]()
        for (index, digit) in inputDigits.reversed().enumerated() {
            guard digit >= 0 else {
                throw BaseError.negativeDigit
            }
            guard digit < inputBase else {
                throw BaseError.invalidPositiveDigit
            }
            print(index, digit)
        }
        
        return outputDigits.isEmpty ? [0] : outputDigits
    }
}




@main
struct Main {
    public static func main() {
        do {
            print(try Base.outputDigits(inputBase: 10, inputDigits: [1,3,9], outputBase: 11))
        } catch {
            print(error)
        }
    }
}

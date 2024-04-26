import Foundation

enum GrainsError: Error {
    case inputTooLow
    case inputTooHigh
}

struct Grains {
    static let total: UInt64 = UInt64.max
    static func square(_ num: Int) throws -> UInt64 {
        guard num > 0 else { throw GrainsError.inputTooLow }
        guard num < 65 else { throw GrainsError.inputTooHigh }
        var res: UInt64 = 1
        for _ in 1..<num {
            res *= 2
        }
        return res
    }
}

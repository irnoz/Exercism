enum GrainsError: Error {
    case inputTooLow
    case inputTooHigh
}

struct Grains {
    static var total: UInt64 {
        get throws {
            UInt64.max
        }
    }

    static func square(_ num: Int) throws -> UInt64 {
        guard num > 0 else { throw GrainsError.inputTooLow }
        guard num < 65 else { throw GrainsError.inputTooHigh }
        return 1 << (num - 1)
    }
}

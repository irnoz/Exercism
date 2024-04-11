import Foundation

struct Acronym {
    static func abbreviate(_ inString: String) -> String {
        return inString
            .replacingOccurrences(of: "-", with: " ")
            .split(whereSeparator: { $0.isWhitespace })
            .compactMap { String($0.first(where: { $0.isLetter }) ?? Character.init("")) }
            .joined()
            .uppercased()
    }
}

import Foundation

public struct Robot {
    public var name: String = String.generateRandomRobotName()
    
    public mutating func resetName() {
        self.name = String.generateRandomRobotName()
    }
}

extension String {
    public static func generateRandomRobotName() -> String {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let randomLetters = (0..<2).map { _ in String(letters.randomElement()!) }.reduce("", +)
        let randomNumbers = String(format: "%03d", Int.random(in: 0...999))
        return randomLetters + randomNumbers
    }
}

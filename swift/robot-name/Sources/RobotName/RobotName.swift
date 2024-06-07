public struct Robot {
    private static let nameRegistry = RobotNameRegistry()
    private(set) var name: String
    init() {
        name = Robot.nameRegistry.makeUniqueName()
    }
    mutating func resetName() {
        name = Robot.nameRegistry.makeUniqueName()
    }
}
private final class RobotNameRegistry {
    private static let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    private static let digits = "0123456789"
    private var names: Set<String> = []
    private func makeName() -> String {
        String(
            [
                RobotNameRegistry.letters.randomElement()!,
                RobotNameRegistry.letters.randomElement()!,
                RobotNameRegistry.digits.randomElement()!,
                RobotNameRegistry.digits.randomElement()!,
                RobotNameRegistry.digits.randomElement()!
            ]
        )
    }
    func makeUniqueName() -> String {
        var name: String
        repeat {
            name = makeName()
        } while names.contains(name)
        names.insert(name)
        return name
    }
}

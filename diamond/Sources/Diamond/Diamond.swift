enum DiamondError: Error {
    case invalidLetterError
    case lowercaseLetterError
}

class Diamond {
    private static let allLetters: [Character] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    static func makeDiamond(letter: Character) -> [String] {
        guard letter.isUppercase else {
            print("Error: Lowercase letter not allowed") // Should throw lowercaseLetterError here
            return []
        }
        guard let index = allLetters.firstIndex(of: letter) else {
            print("Error: Invalid letter provided.") // Should throw invalidLetterError here
            return []
        }
        let letters = Array(allLetters[0..<index + 1])
        var spaces = letters.count - 1
        var diamond = [String]()
        print(spaces)
        
        letters.forEach { letter in
            let prefix = String(repeating: " ", count: spaces)
            let suffix = String(repeating: " ", count: letters.count - spaces - 1)
            var result = "\(prefix)\(letter)\(suffix)"
            result = result + result.reversed()
            diamond.append("\(result)")
            spaces -= 1
        }
        return diamond + diamond.reversed()
    }
}

@main
public class Main {
    public static func main() {
        let diamond = Diamond.makeDiamond(letter: "D")
        print(diamond)
        diamond.forEach { print($0) }
    }
}

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
        // MARK: - Export logic to private fucntions
        let letters = Array(allLetters[0..<index + 1])
        let spaces = letters.count * 2 - 1
        var letterIndex = letters.count - 1
        var diamond = [String]()

        letters.forEach { letter in
            var letterArray = Array(repeating: " " as Character, count: spaces)
            letterArray[letterIndex] = letter
            letterArray[letterArray.count - letterIndex - 1] = letter
            diamond.append(String(letterArray))
            letterIndex -= 1
        }
        return diamond + diamond.reversed().dropFirst()
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

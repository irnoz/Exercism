import Foundation
class WordCount {
    public let words: String
    
    init(words: String) {
        self.words = words
    }
    public func count() -> [String : Int] {
        return words
            .lowercased()
            .components(separatedBy: CharacterSet.alphanumerics.union(CharacterSet(charactersIn: "'")).inverted)
            .map { $0.trimmingCharacters(in: CharacterSet.punctuationCharacters) }
            .filter { !$0.isEmpty }
            .reduce(into: [:]) { counts, word in
                counts[word, default: 0] += 1
            }
    }
}

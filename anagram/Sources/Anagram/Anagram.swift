class Anagram {
    let word: String
    let sortedWord: String
    
    init(word: String) {
        self.word = word.lowercased()
        self.sortedWord = String(word.lowercased().sorted())
    }
    
    func match(_ candidates: [String]) -> [String] {
        candidates.filter { isAnagram($0) }
    }
    
    private func isAnagram(_ candidate: String) -> Bool {
        word != candidate.lowercased() &&
        sortedWord == String(candidate.lowercased().sorted())
        
    }
    
}

class Bob {
    static func response(_ message: String) -> String {
        let trimmedMessage = message.trim()
        
        if trimmedMessage.isEmpty {
            return "Fine. Be that way!"
        }
        
        let hasLetters = trimmedMessage.contains { $0.isLetter }
        let isQuestion = trimmedMessage.last == "?"
        let isYelling = hasLetters && trimmedMessage.uppercased() == trimmedMessage
        
        if isYelling && isQuestion {
            return "Calm down, I know what I'm doing!"
        } else if isQuestion {
            return "Sure."
        } else if isYelling {
            return "Whoa, chill out!"
        } else {
            return "Whatever."
        }
    }
}

extension String {
    func trim() -> String {
        var start = startIndex
        var end = endIndex
        
        while start < end && self[start].isWhitespace {
            start = index(after: start)
        }
        
        while end > start && self[index(before: end)].isWhitespace {
            end = index(before: end)
        }
        
        return String(self[start..<end])
    }
}

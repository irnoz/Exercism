func newScoreBoard() -> [String: Int] {
    
    let scores: [String: Int] = [:]
    
    return scores
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    if scores[name] != nil {
        scores.removeValue(forKey: name)
    }
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    if scores[name] != nil {
        scores[name] = 0
    }
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    scores[name] = scores[name, default: 0] + delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    
    var playersAndScores: [(String, Int)] = []
    
    for (name, score) in scores {
        playersAndScores.append((name, score))
    }
    
    playersAndScores.sort{ (lhs: (String, Int), rhs: (String, Int)) -> Bool in
        return lhs.0 < rhs.0
    }
    
    return playersAndScores
    
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    
    var playersAndScores: [(String, Int)] = []
    
    for (name, score) in scores {
        playersAndScores.append((name, score))
    }
    
    playersAndScores.sort{ (lhs: (String, Int), rhs: (String, Int)) -> Bool in
        return lhs.1 > rhs.1
    }
    
    return playersAndScores
    
}

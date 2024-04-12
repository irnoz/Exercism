enum InvalidArgumentError: Error {
    case invalidLength
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
    guard dnaSequence.count == against.count else {
        throw InvalidArgumentError.invalidLength
    }
    
    let hammingDistance = zip(dnaSequence, against).reduce(0) { partialResult, pair in
        return partialResult + (pair.0 == pair.1 ? 0 : 1)
    }
    
    return hammingDistance
}

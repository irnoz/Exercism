func isIsogram(_ string: String) -> Bool {
    let filteredString = string.lowercased().filter { $0.isLetter }
    return filteredString.count == Set(filteredString).count
}

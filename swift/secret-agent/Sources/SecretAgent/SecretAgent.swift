func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func checkPassword(_ possiblePassword: String) -> String {
        guard password == possiblePassword else { return "Sorry. No hidden secrets here." }
        return secret
    }
    return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    var combination: (Int, Int, Int)
    combination.0 = f(room)
    combination.1 = f(combination.0)
    combination.2 = f(combination.1)
    return combination
}

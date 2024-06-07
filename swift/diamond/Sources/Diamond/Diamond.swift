class Diamond {
    static func makeDiamond(letter: Character) -> [String] {
        let letters = String("ABCDEFGHIJKLMNOPQRSTUVWXYZ".prefix{$0 <= letter})
        let (rows, columns) = (letters + letters.dropLast().reversed(), letters.reversed().dropLast() + letters)
        return rows.map { (letter) in
            columns.map { letter == $0 ? String(letter) : " "}.joined()
        }
    }
}

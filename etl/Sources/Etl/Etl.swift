class ETL {
    static func transform(_ old: [String: [String]]) -> [String: Int] {
        var result = [String: Int]()
        old.forEach { key, value in
            value.forEach { letter in
                result[letter.lowercased()] = Int(key)
            }
        }
        return result
    }
}

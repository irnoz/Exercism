func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    (1..<limit)
        .filter { num in
            inMultiples.contains { num.isMultiple(of: $0) }
        }
        .reduce(0, +)
}

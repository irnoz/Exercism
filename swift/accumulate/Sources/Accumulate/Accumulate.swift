extension Sequence {
    func accumulate<T>(_ function: (Element) -> T) -> [T] {
        self.map { function($0) }
    }
}

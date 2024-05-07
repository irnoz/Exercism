func isPangram(_ text: String) -> Bool {
    Set(text.lowercased().filter({$0 >= "a" && $0 <= "z"})).count == 26
}

let map = [
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
]

func toRna(_ dna: String) -> String {
    dna
        .map { map[String($0)] ?? "#" }
        .joined()
}

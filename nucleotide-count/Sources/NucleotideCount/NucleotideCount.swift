public enum NucleotideCountErrors: Error {
    case invalidNucleotide
}

public class DNA {
    public let strand: String
    private let validNucleotides: Set = ["A", "C", "G", "T"]
    
    init(strand: String) throws {
        self.strand = strand
        if strand.contains(where: { !validNucleotides.contains(String($0)) }) {
            throw NucleotideCountErrors.invalidNucleotide
        }
    }
    public func counts() -> [String : Int] {
        strand.reduce(into: ["A": 0, "C": 0, "G": 0, "T": 0]) { partialResult, nucleotide in
            partialResult[String(nucleotide), default: 0] += 1
        }
    }
}

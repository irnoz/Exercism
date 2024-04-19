let factors = [(3, "Pling"),(5, "Plang"),(7, "Plong")]

func raindrops(_ number: Int) -> String {
    var result = ""
    result = factors.reduce("") { (partialResult: String, factorPair: (Int, String)) -> String in
        partialResult + (number % factorPair.0 == 0 ? factorPair.1 : "")
    }
    
    
    return result.isEmpty ? String(number) : result
}

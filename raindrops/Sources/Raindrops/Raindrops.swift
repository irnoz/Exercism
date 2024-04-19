func raindrops(_ number: Int) -> String {
    var res = ""
    
    if number >= 3 && number % 3 == 0 {
        res += "Pling"
    }
    if number >= 5 && number % 5 == 0 {
        res += "Plang"
    }
    if number >= 7 && number % 7 == 0 {
        res += "Plong"
    }
    return res.count == 0 ? String(number) : res
}

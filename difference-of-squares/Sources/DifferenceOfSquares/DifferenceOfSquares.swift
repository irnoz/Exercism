//Solution goes in Sources
struct Squares {
    let num: Int
    var squareOfSum: Int {
        get {
            let sum = (num * (1 + num)) / 2
            return sum * sum
        }
    }
    var sumOfSquares: Int {
        get {
            (num * (num + 1) * (2 * num + 1)) / 6
        }
    }
    var differenceOfSquares: Int {
        squareOfSum - sumOfSquares
    }
    
    init(_ num: Int) {
        self.num = num
    }
}

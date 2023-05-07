//Solution goes in Sources
struct Squares {
    let num: Int
    var squareOfSum: Int = 0
    var sumOfSquares: Int = 0
    var differenceOfSquares: Int = 0
    
    mutating func setSquareOfSum(upTo num: Int) {
        for n in 1...num {
            squareOfSum += n
        }
        squareOfSum = squareOfSum * squareOfSum
    }
    mutating func setSumOfSquares(upTo num: Int) {
        for n in 1...num {
            sumOfSquares += n * n
        }
    }
    mutating func setDifferenceOfSquares(upTo num: Int) {
        differenceOfSquares = squareOfSum - sumOfSquares
    }
    
    func mathApproach(n: Int) -> Int {
        if n <= 1 {
            return 0
        }
        var result = 0
        
        for i in 1...n {
            for j in i+1..<n+1 {
                result += i*j
            }
        }
        
        return 2*result
    }
    
    init(_ num: Int) {
        self.num = num
        
        setSquareOfSum(upTo: num)
        setSumOfSquares(upTo: num)
        setDifferenceOfSquares(upTo :num)
    }
}

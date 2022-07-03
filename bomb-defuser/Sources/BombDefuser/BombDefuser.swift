// TODO: Please define the flip closure
let flip: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.0, $0.2) }

// TODO: Please define the stopAtOne closure
let rotate: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.2, $0.0) }

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    { (num, args) in
        var res = args
        var binNum = String(num, radix: 2)
        while binNum.count < 8 {
            binNum = "0" + binNum
        }
        
        for bit in binNum.reversed() {
            if bit == "0" {
                res = flipper(res)
            } else {
                res = rotator(res)
            }
        }
        return res
    }
}

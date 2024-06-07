func timeToPrepare(drinks: [String]) -> Double {
    let timeNeededToPrepare: [String: Double] = [
        "beer": 0.5,
        "soda": 0.5,
        "water": 0.5,
        "shot": 1.0,
        "mixed drink": 1.5,
        "fancy drink": 2.5,
        "frozen drink": 3.0
    ]
    var totalTime: Double = 0
    
    for drink in drinks {
        totalTime += timeNeededToPrepare[drink]!
    }
    
    return totalTime
//    could use this instead
//    return drinks.compactMap { timeToPrepare[$0] }.reduce(0, +)
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var index: Int = 0
    var alreadyCut: Int = 0
    
    while index < limes.count && alreadyCut < needed {
        switch limes[index] {
        case "small": alreadyCut += 6
        case "medium": alreadyCut += 8
        default: alreadyCut += 10
        }
        index += 1
    }
    
    return index
    
//    here is a different way
//    let wedgesCount = ["small": 6, "large": 8, "medium": 10]
//        var total = 0
//        return limes.compactMap({ wedgesCount[$0] }).filter({
//            guard total < needed else { return false }
//            total += $0
//            return true
//        }).count
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var minutesLeft = Double(minutesLeft)
    var remainingOrders = remainingOrders
    
    repeat {
        minutesLeft -= timeToPrepare(drinks: remainingOrders.first!)
        remainingOrders.removeFirst()
    } while remainingOrders.isEmpty == false && minutesLeft > 0
//    also correct
//    minutesLeft -= timeToPrepare(drinks: remainingOrders.removeFirst())
    
    return remainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    var log: ( beer: (first: String, last: String, total: Int)?,
               soda: (first: String, last: String, total: Int)? ) = (nil, nil)
    
//    var totalBeer: Int = 0
//    var firstBeer: String = ""
//    var lastBeer: String = ""
//    var totalSoda: Int = 0
//    var firstSoda: String = ""
//    var lastSoda: String = ""
    
    for (drink, time) in orders {
        if drink == "beer" {
            if log.beer == nil {
                log.beer = (time, time, 0)
            }
            log.beer?.last = time
            log.beer?.total += 1
        } else if drink == "soda" {
            if log.soda == nil {
                log.soda = (time, time, 0)
            }
            log.soda?.last = time
            log.soda?.total += 1
        }
    }
    
    return log
//    return ((firstBeer, lastBeer, totalBeer), (firstSoda, lastSoda, totalSoda))
}

// Define "Gigasecond" with a "description" property containing
// the result, times are expected in "yyyy-MM-dd'T'HH:mm:ss" format

import Foundation

struct Gigasecond {
    var description: String
    
    init? (from date: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        guard let startDate = dateFormatter.date(from: date) else { return nil }
        let endDate = startDate.addingTimeInterval(1000000000)
        
        description = dateFormatter.string(from: endDate)
    }
}

let giga = Gigasecond(from: "2009-02-19T01:46:40")

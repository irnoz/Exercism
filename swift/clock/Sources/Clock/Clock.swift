import Foundation

struct Clock: Equatable {
    private(set) var description: String
    private let hours: Int
    private let minutes: Int
    
    init(hours: Int, minutes: Int) {
        self.hours = hours
        self.minutes = minutes
        self.description = "\(hours):\(minutes)"
    }
    
    public func subtract(minutes: Int) -> Clock {
        return self
    }
}

extension Clock {
    public func add(minutes: Int) -> Clock {
        return Clock(hours: self.hours, minutes: minutes)
    }
}

// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel: Int {
    case trace
    case debug
    case info = 4
    case warning
    case error
    case fatal
    case unknown = 42
    
    init(_ logLine: String) {
        let index = logLine.index(logLine.startIndex, offsetBy: 4)
        let mySubstring = logLine[..<index]
        let log = String(mySubstring.dropFirst(1))

        switch log {
        case "TRC":
            self = .trace
        case "DBG":
            self = .debug
        case "INF":
            self = .info
        case "WRN":
            self = .warning
        case "ERR":
            self = .error
        case "FTL":
            self = .fatal
        default:
            self = .unknown
        }
    }
    
    func shortFormat(message: String) -> String {
        var shortFormatMessage = ""
        shortFormatMessage = "\(self.rawValue):\(message)"
        return shortFormatMessage
    }
}

let logLevel = LogLevel("[INF]: File deleted")

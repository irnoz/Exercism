//Solution goes in Sources
//on every year that is evenly divisible by 4
//  except every year that is evenly divisible by 100
//    unless the year is also evenly divisible by 400
class Year {
    var isLeapYear: Bool = false
    
    init(calendarYear: Int) {
        if calendarYear % 100 == 0 && calendarYear % 400 == 0 {
            isLeapYear = true
        }
        if calendarYear % 4 == 0 && calendarYear % 100 != 0 {
            isLeapYear = true
        }
    }
}

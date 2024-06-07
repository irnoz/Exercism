let hoursPerWorkDay: Double = 8
let workDaysPerMonth: Double = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate) * hoursPerWorkDay
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (workDaysPerMonth * dailyRateFrom(hourlyRate: hourlyRate) * discountFraction(fromDiscount: discount)).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (budget / (dailyRateFrom(hourlyRate: hourlyRate) * discountFraction(fromDiscount: discount))).rounded(.down)
}

func discountFraction(fromDiscount discount: Double) -> Double {
    return 1.0 - (discount / 100)
}

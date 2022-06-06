import Foundation

func get10Percent(from amount: Double) -> Double {
    return amount * 0.1
}

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let totalMonths = 5 * 12.0
    if monthlyBudget * totalMonths >= price {
        return "Yes! I'm getting a \(vehicle)"
    } else if (monthlyBudget + get10Percent(from: monthlyBudget)) * totalMonths >= price {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    if wheels == 2 || wheels == 3 {
        return "You will need a motorcycle license for your vehicle"
    } else if wheels == 4 || wheels == 6 {
        return "You will need an automobile license for your vehicle"
    } else if wheels == 18 {
        return "You will need a commercial trucking license for your vehicle"
    } else {
        return "We do not issue licenses for those types of vehicles"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld < 10 else { return 25 }
    
    let baseCost = msrp > 25000 ? msrp : 25000
    
    return Int((Double(baseCost - Int(get10Percent(from: Double(baseCost))) * yearsOld) / 100).rounded(.down))
}

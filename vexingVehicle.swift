func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let numberOfMonths = 5 * 12
    let monthlyPayment = price / Double(numberOfMonths)

    if monthlyPayment <= monthlyBudget {
        return "Yes! I'm getting a \(vehicle)"
    } else if monthlyPayment <= monthlyBudget * 1.10 {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels: Int) -> String {
    switch numberOfWheels {
    case 2, 3:
        return "You will need a motorcycle license for your vehicle"
    case 4, 6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Double, yearsOld: Int) -> Double {
    if yearsOld < 3 {
        return originalPrice * 0.80
    } else if yearsOld >= 10 {
        return originalPrice * 0.50
    } else {
        return originalPrice * 0.70
    }
}
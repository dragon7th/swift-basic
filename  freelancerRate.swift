import Foundation
// calculate the daily rate given an hourly rate
func dailyRateFrom(hourlyRate: Int) -> Double {
    let hoursInDay = 8
    return Double(hourlyRate * hoursInDay)
}

// calculate the monthly rate, given an hourly rate and a discount
func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let workdaysInMonth = 22
    let hoursInDay = 8
    let fullMonthlyRate = Double(hourlyRate * hoursInDay * workdaysInMonth)
    let discountPercentage = discount / 100
    let discountedMonthlyRate = fullMonthlyRate * (1 - discountPercentage)
    return round(discountedMonthlyRate)
}

// calculate thr number of workdays given a budget, hourly rate and discount
func workdaysIn(budget: Int, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let hoursInDay = 8
    let discountPercentage = discount / 100
    let discountedHourlyRate = Double(hourlyRate) * (1 - discountPercentage)
    let dailyRate = discountedHourlyRate * Double(hoursInDay)
    let numberOfDays = Double(budget) / dailyRate
    return floor(numberOfDays)
}
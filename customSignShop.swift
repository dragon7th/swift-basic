// TODO: define the 'birthday' String constant
let birthday = "Birthday"
// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"

// create set of useful character
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"

// combine phrases to buid up messages
func buildSign(for occasion: String, name: String) -> String {
    return "Happy \(occasion) \(name)!"
}

// build a graduation sign
func graduationFor(name: String, year: Int) -> String {
    return """
    Congratulations \(name)!
    Class of \(year)
    """
}

// compute the cost of sign
func costOf(sign: String) -> Int {
    let basePrice = 20
    let costPerLetter = 2
    let numberOfCharacters = sign.count
    let totalCost = basePrice + (numberOfCharacters * costPerLetter)
    return totalCost
}

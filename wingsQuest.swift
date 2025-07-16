// define if bird gets bonus points
func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return powerUpActive && touchingEagle
}

// define if bird scores
func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingPowerUp || touchingSeed
}

// define if birds loses
func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return touchingEagle && !powerUpActive
}

// define if birds wins
func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    let loseCondition = touchingEagle && !powerUpActive // Reuse the lose condition logic
    return hasPickedUpAllSeeds && !loseCondition
}
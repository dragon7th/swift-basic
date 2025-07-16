// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: Int) -> Int {
    let preparationTimePerLayer = 2
    return layers * preparationTimePerLayer
}

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    let preparationTime = preparationTimeInMinutes(layers: layers) // Use the previously defined function
    return preparationTime + elapsedMinutes
}
// TODO: define the 'expectedMinutesInOven' constant

let expectedMinutesInOven: Int = 40
var layerPreparationTime: Int = 2

// TODO: define the 'remainingMinutesInOven' function

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function

func preparationTimeInMinutes(layers: Int) -> Int {
    return layers * layerPreparationTime
}

// TODO: define the 'totalTimeInMinutes' function

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    return preparationTimeInMinutes(layers: layers) + elapsedMinutes
}

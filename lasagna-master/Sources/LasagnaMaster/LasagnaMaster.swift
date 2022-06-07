// TODO: define the 'remainingMinutesInOven' function

func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function

func preparationTimeInMinutes(layers: String...) -> Int {
    layers.count * 2
}

// TODO: define the 'quantities' function

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var quantityOfNoodles: Int = 0
    var quantityOfSouce: Double = 0
    
    for layer in layers {
        if layer == "noodles" {
           quantityOfNoodles += 3
       } else if layer == "sauce" {
             quantityOfSouce += 0.2
         }
    }
    
    return (quantityOfNoodles, quantityOfSouce)
}

// TODO: define the 'toOz' function

func toOz(_ amount: inout(noodles: Int, sauce: Double)) {
    amount.sauce *= 33.814
}

// TODO: define the 'redWine' function

func redWine(layers: String...) -> Bool {
    func countOccurence(of layer: String) -> Int {
        layers.filter({ $0 == layer }).count
    }
    
    return countOccurence(of: "mozzarella") + countOccurence(of: "ricotta") + countOccurence(of: "béchamel") <= countOccurence(of: "sauce") + countOccurence(of: "meat")
    
//    return layers.filter{ ["mozzarella", "ricotta", "béchamel"].contains($0) }.count <= layers.filter{ ["meat", "sauce"].contains($0) }.count
}

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter, diameter >= 0, let slices = slices, slices >= 1 else {
        return nil
    }
    let radius = diameter / 2
    return radius * radius  * Double.pi / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    
    // these could be nil
    var bigger: Double?
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    
    // could also use .some(variabelName) and .none() functions as well
    switch (areaA, areaB) {
    case (nil, nil):
        break
    case (_, nil):
        bigger = areaA
    case (nil, _):
        bigger = areaB
    default:
        if let areaA = areaA, let areaB  = areaB {
            if areaA > areaB {
                bigger = areaA
            } else if areaA < areaB {
                bigger = areaB
            }
        }
    }
    
    if bigger == nil {
        return "Neither slice is bigger"
    } else if bigger == areaA {
        return "Slice A is bigger"
    } else {
        return "Slice B is bigger"
    }
}

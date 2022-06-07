func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    if let diameter = diameter, let slices = slices {
        if diameter >= 0 && slices > 0 {
            let radius = diameter / 2
            return radius * radius * (1 / Double(slices)) * Double.pi
        }
    } else {
        return nil
    }
    return nil
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    var areaA: Double?
    var areaB: Double?
    
    if let diameterA = Double(diameterA), let slicesA = Int(slicesA) {
        areaA = sliceSize(diameter: diameterA, slices: slicesA)
    }
    if let diameterB = Double(diameterB), let slicesB = Int(slicesB) {
        areaB = sliceSize(diameter: diameterB, slices: slicesB)
    }
    switch (areaA, areaB) {
    case (nil, nil):
        return "Neither slice is bigger"
    case (_, nil):
        return "Slice A is bigger"
    case (nil, _):
        return "Slice B is bigger"
    default:
        if let areaA = areaA, let areaB  = areaB {
            if areaA > areaB {
                return "Slice A is bigger"
            } else if areaA < areaB {
                    return "Slice B is bigger"
            } else {
                return "Neither slice is bigger"
            }
        }
    }
    return "Nither slice is Bigger"
//    switch (optionalA, optionalB) {
//    case let (valA?, valB?): return valA < valB
//    default: return false
//    }
}

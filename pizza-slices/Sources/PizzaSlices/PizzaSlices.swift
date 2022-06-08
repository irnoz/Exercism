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
    // giving default values in case of nil
    let sliceA: Double = sliceSize(diameter: Double(diameterA), slices: Int(slicesA)) ?? -1
    let sliceB: Double = sliceSize(diameter: Double(diameterB), slices: Int(slicesB)) ?? -1
    
    if sliceA == sliceB { return "Neither slice is bigger"}
    return sliceA > sliceB ? "Slice A is bigger" : "Slice B is bigger"
}

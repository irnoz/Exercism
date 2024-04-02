class SpaceAge {
    let onEarth: Double
    let onMercury: Double
    let onVenus: Double
    let onMars: Double
    let onJupiter: Double
    let onSaturn: Double
    let onUranus: Double
    let onNeptune: Double
    
    init(_ age: Int) {
        onEarth = Double(age) / 31557600
        onMercury = onEarth / 0.2408467
        onVenus = onEarth / 0.61519726
        onMars = onEarth / 1.8808158
        onJupiter = onEarth / 11.862615
        onSaturn = onEarth / 29.447498
        onUranus = onEarth / 84.016846
        onNeptune = onEarth / 164.79132
    }
}

//- Mercury: orbital period 0.2408467 Earth years
//- Venus: orbital period 0.61519726 Earth years
//- Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
//- Mars: orbital period 1.8808158 Earth years
//- Jupiter: orbital period 11.862615 Earth years
//- Saturn: orbital period 29.447498 Earth years
//- Uranus: orbital period 84.016846 Earth years
//- Neptune: orbital period 164.79132 Earth years

public class SimulatedRobot {
    public enum Bearing: Int {
        case north = 0, east, south, west
        
        func rotatedClockwise() -> Bearing {
            return Bearing(rawValue: (self.rawValue + 1) % 4)!
        }
        
        func rotatedCounterClockwise() -> Bearing {
            return Bearing(rawValue: (self.rawValue + 3) % 4)!
        }
    }
    
    struct State {
        var x: Int
        var y: Int
        var bearing: Bearing
    }
    
    private(set) var state: State
    
    init(x: Int, y: Int, bearing: Bearing) {
        self.state = State(x: x, y: y, bearing: bearing)
    }
    
    public func move(commands: String) {
        commands.forEach { [unowned self] command in
            switch command {
            case "L":
                self.state.bearing = self.state.bearing.rotatedCounterClockwise()
            case "R":
                self.state.bearing = self.state.bearing.rotatedClockwise()
            case "A":
                self.moveForward()
            default:
                print("Log: Unknown command")
            }
        }
    }
    
    private func moveForward() {
        let deltas: [(dx: Int, dy: Int)] = [(0, 1), (1, 0), (0, -1), (-1, 0)] // N, E, S, W
        let delta = deltas[self.state.bearing.rawValue]
        self.state.x += delta.dx
        self.state.y += delta.dy
    }
}

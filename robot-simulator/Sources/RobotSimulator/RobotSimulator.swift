public class SimulatedRobot {
    public enum Bearing: Int {
        case north = 0, east, south, west
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
                self.turnLeft()
            case "R":
                self.turnRight()
            case "A":
                self.moveForward()
            default:
                print("Log: Unknown command")
            }
        }
    }
    
    private func turnLeft() {
        switch state.bearing {
        case .north:
            state.bearing = .west
        case .east:
            state.bearing = .north
        case .south:
            state.bearing = .east
        case .west:
            state.bearing = .south
        }
    }
    
    private func turnRight() {
        switch state.bearing {
        case .north:
            state.bearing = .east
        case .east:
            state.bearing = .south
        case .south:
            state.bearing = .west
        case .west:
            state.bearing = .north
        }
    }
    
    private func moveForward() {
        switch state.bearing {
        case .north:
            state.y += 1
        case .east:
            state.x += 1
        case .south:
            state.y -= 1
        case .west:
            state.x -= 1
        }
    }
}

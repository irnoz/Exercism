// TODO: Define the Position struct
struct Position {
    var x = 0
    var y = 0
    
    mutating func moveTo(newX: Int, newY: Int) {
        self.x = newX
        self.y = newY
    }
}

// TODO: Define the Size struct
struct Size {
    var width = 80
    var height = 60
    
    mutating func resize(with newWidth: Int, and newHeight: Int) {
        self.width = newWidth
        self.height = newHeight
    }
}

// TODO: Define the Window class
class Window {
    var titel = "New Window"
    var screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents : String?
    
    
}

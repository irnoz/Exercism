// TODO: Define the Position struct
struct Position {
    var x = 0
    var y = 0
    
    mutating func moveTo(newX x: Int, newY y: Int) {
        self.x = x
        self.y = y
    }
}

// TODO: Define the Size struct
struct Size {
    var width = 80
    var height = 60
    
    mutating func resize(newWidth width: Int, newHeight height: Int) {
        self.width = width
        self.height = height
    }
}

// TODO: Define the Window class
class Window {
    var titel = "New Window"
    var screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents : String?
    
    func resize(to newSize: Size) -> () {
        let allowedWidth = self.screenSize.width - self.position.x
        let allowedHeight = self.screenSize.height - self.position.y

        var newWidth: Int = newSize.width <= 1 ? 1 : newSize.width > allowedWidth ? allowedWidth : newSize.width
        var newHeight: Int = newSize.height <= 1 ? 1 : newSize.height > allowedHeight ? allowedHeight : newSize.height

        self.size.resize(newWidth: newWidth, newHeight: newHeight)
    }
    
    func move(to position: Position) -> () {
        
    }
}

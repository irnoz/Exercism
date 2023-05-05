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
        let allowedMaxWidth = self.screenSize.width - self.position.x
        let allowedMaxHeight = self.screenSize.height - self.position.y

        var newWidth: Int = newSize.width <= 1 ? 1 : newSize.width > allowedMaxWidth ? allowedMaxWidth : newSize.width
        var newHeight: Int = newSize.height <= 1 ? 1 : newSize.height > allowedMaxHeight ? allowedMaxHeight : newSize.height

        self.size.resize(newWidth: newWidth, newHeight: newHeight)
    }
    
    func move(to newPosition: Position) -> () {
        let allowedMaxX = self.screenSize.width - self.size.width
        let allowedMaxY = self.screenSize.height - self.size.height
        
        var newX: Int = newPosition.x <= 0 ? 0 : newPosition.x > allowedMaxX ? allowedMaxX : newPosition.x
        var newY: Int = newPosition.y <= 0 ? 0 : newPosition.y > allowedMaxY ? allowedMaxY : newPosition.y
        
        self.position.moveTo(newX: newX, newY: newY)
    }
}

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
    var title = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents : String?
    
    func resize(to newSize: Size) -> () {
        let allowedMaxWidth = self.screenSize.width - self.position.x
        let allowedMaxHeight = self.screenSize.height - self.position.y

        let newWidth: Int = newSize.width <= 1 ? 1 : newSize.width > allowedMaxWidth ? allowedMaxWidth : newSize.width
        let newHeight: Int = newSize.height <= 1 ? 1 : newSize.height > allowedMaxHeight ? allowedMaxHeight : newSize.height

        self.size.resize(newWidth: newWidth, newHeight: newHeight)
    }
    
    func move(to newPosition: Position) -> () {
        let allowedMaxX = self.screenSize.width - self.size.width
        let allowedMaxY = self.screenSize.height - self.size.height
        
        let newX: Int = newPosition.x <= 0 ? 0 : newPosition.x > allowedMaxX ? allowedMaxX : newPosition.x
        let newY: Int = newPosition.y <= 0 ? 0 : newPosition.y > allowedMaxY ? allowedMaxY : newPosition.y
        
        self.position.moveTo(newX: newX, newY: newY)
    }
    
    func update(title newTitle: String) -> () {
        self.title = newTitle
    }
    
    func update(text newContents: String?) -> () {
        self.contents = newContents
    }
    
    func display() -> String {
        "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
    
//    init() {
//        self.title = "Main Window"
//        self.resize(to: Size(width: 400, height: 300))
//        self.move(to: Position(x: 100, y: 100))
//        self.update(text: "This is the main window")
//    }
}

let mainWindow: Window = {
    var window = Window()

    window.resize(to: Size(width: 400, height: 300))
    window.move(to: Position(x: 100, y: 100))
    window.update(title: "Main Window")
    window.update(text: "This is the main window")

    return window
}()

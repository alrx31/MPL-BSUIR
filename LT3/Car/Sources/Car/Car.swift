import Foundation
open class Car{
    var x:Double
    var y:Double
    var direction:Double

    public init(x:Double, y:Double,direction:Double){
        self.x = x
        self.y = y
        self.direction = direction
    }

    open func move(distance:Double){
        let radians = direction * Double.pi / 180
        let dx = distance * cos(radians)
        let dy = distance * sin(radians)
        
        self.x += dx
        self.y += dy
    }

    func turn(_dir:Double){
        self.direction = _dir
    }
}

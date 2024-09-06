    import Foundation
    open class Car{
        public var x:Double
        public var y:Double
        public var direction:Double

        public init(x:Double, y:Double,direction:Double){
            self.x = x
            self.y = y
            self.direction = direction
        }

        open func move(distance:Double){
            let radians = self.direction * Double.pi / 180
            let dx = distance * cos(radians);
            let dy = distance * sin(radians);
            
            self.x += round(dx);
            self.y += round(dy);
        }

        public func turn(_dir:Double){
            self.direction = _dir
        }
    }

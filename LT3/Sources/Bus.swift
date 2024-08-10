import Car

public class Bus:Car{
    public var passengers: Int
    public var money: Double
    
    public init(x: Double, y: Double, direction: Double, passengers: Int = 0, money: Double = 0.0) {
        self.passengers = passengers
        self.money = money
        super.init(x: x, y: y, direction: direction)
    }



    public func enterPassenger() {
        passengers += 1
    }
    
    public func exitPassenger() {
        if passengers > 0 {
            passengers -= 1
        }
    }
    
    override open func move(distance: Double) {
        super.move(distance: distance)
        money += Double(passengers) * distance * 0.9 
    }
}
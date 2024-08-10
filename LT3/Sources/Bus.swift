import Car

public class Bus:Car{
    var passengers: Int
    var money: Double
    
    init(x: Double, y: Double, direction: Double, passengers: Int = 0, money: Double = 0.0) {
        self.passengers = passengers
        self.money = money
        super.init(x: x, y: y, direction: direction)
    }



    func enterPassenger() {
        passengers += 1
    }
    
    func exitPassenger() {
        if passengers > 0 {
            passengers -= 1
        }
    }
    
    override open func move(distance: Double) {
        super.move(distance: distance)
        money += Double(passengers) * distance * 1.0 // Например, 1.0 денег за единицу расстояния на пассажира
    }
}
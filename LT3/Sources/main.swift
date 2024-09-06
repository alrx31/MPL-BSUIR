// The Swift Programming Language
// https://docs.swift.org/swift-book

import Car

while true {
        
    var option = -1;
    print("Выберете с чем работать:")
    print("1. Автомобиль")
    print("2. Автобус")
    print("3. Выйти")

    if let opt = readLine() {
        if let num = Int(opt){
            option = num
        }else{
            print("вы ввели не число")
        }
    }else{
        print("неверный ввод")
    }

    if option == 3 {
        break
    }

    if option == 1 {
        var car = Car(x: 0, y: 0, direction: 0)
        print("Вы выбрали автомобиль")
        print("Введите начальные координаты x, y и направление движения")
        if let x = readLine(), let y = readLine(), let direction = readLine(){
            if let x = Double(x), let y = Double(y), let direction = Double(direction){
                car = Car(x: x, y: y, direction: direction)
            }else{
                print("вы ввели не число")
                continue
            }
        }else{
            print("неверный ввод")
            continue
        }

        while(true){
            print("Выберете действие:")
            print("1. Переместиться")
            print("2. Повернуть")
            print("3. Выйти")

            var option = -1;

            if let opt = readLine() {
                if let num = Int(opt){
                    if(num < 1 || num > 3){
                        print("неверный ввод")
                        continue
                    }
                    option = num
                }else{
                    print("вы ввели не число")
                }
            }else{
                print("неверный ввод")
            }

            if option == 3 {
                break
            }

            if(option == 1){
                print("Введите расстояние")
                if let distance = readLine(){
                    if let distance = Double(distance){
                        car.move(distance: distance)
                        print("Координаты: x = \(car.x), y = \(car.y)")
                    }else{
                        print("вы ввели не число")
                    }
                }else{
                    print("неверный ввод")
                }
            }
            if option == 2{
                print("Введите угол поворота")
                if let dir = readLine(){
                    if let dir = Double(dir){
                        car.turn(_dir: dir)
                        print("Направление: \(car.direction)")
                    }else{
                        print("вы ввели не число")
                    }
                }else{
                    print("неверный ввод")
                }
            }


        }


    }

    if option == 2 {
        var bus = Bus(x: 0, y: 0, direction: 0, passengers: 0, money: 0)
        print("Вы выбрали автобус")
        print("Введите начальные координаты x, y и направление движения, количество пассажиров и количество денег")

        if let x = readLine(), let y = readLine(), let direction = readLine(), let passengers = readLine(), let money = readLine(){
            if let x = Double(x), let y = Double(y), let direction = Double(direction), let passengers = Int(passengers), let money = Double(money){
                bus = Bus(x: x, y: y, direction: direction, passengers: passengers, money: money)
            }else{
                print("вы ввели не число")
                continue
            }
        }else{
            print("неверный ввод")
            continue
        }

        while true {
            print("Выберете действие:")
            print("1. Переместиться")
            print("2. Повернуть")
            print("3. Посадить пассажира")
            print("4. Высадить пассажира")
            print("5. Сколько пассажиров")
            print("6. Сколько денег")
            
            print("7. Выйти")

            var option = -1;

            if let opt = readLine() {
                if let num = Int(opt){
                    if(num < 1 || num > 6){
                        print("неверный ввод")
                        continue
                    }
                    option = num
                }else{
                    print("вы ввели не число")
                }
            }else{
                print("неверный ввод")
            }

            if option == 7 {
                break
            }
            if option == 6 {
                print("Деньги: \(bus.money)")
                continue
            }
            if option == 5{
                print("Пассажиры: \(bus.passengers)")
                continue
            }

            if(option == 1){
                print("Введите расстояние")
                if let distance = readLine(){
                    if let distance = Double(distance){
                        bus.move(distance: distance)
                        print("Координаты: x = \(bus.x), y = \(bus.y)")
                        print("Деньги: \(bus.money)")
                    }else{
                        print("вы ввели не число")
                    }
                }else{
                    print("неверный ввод")
                }
            }
            if option == 2{
                print("Введите угол поворота")
                if let dir = readLine(){
                    if let dir = Double(dir){
                        bus.turn(_dir: dir)
                        print("Направление: \(bus.direction)")
                    }else{
                        print("вы ввели не число")
                    }
                }else{
                    print("неверный ввод")
                }
            }
            if option == 3{
                bus.enterPassenger()
                print("Пассажиров: \(bus.passengers)")
            }
            if option == 4{
                bus.exitPassenger()
                print("Пассажиров: \(bus.passengers)")
            }
        }
    }

}

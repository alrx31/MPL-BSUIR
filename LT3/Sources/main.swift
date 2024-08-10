// The Swift Programming Language
// https://docs.swift.org/swift-book

import Car
var car = Car(x: 0, y: 0, direction: 0)

var option = -1;
print("Выберете с чем работать:")
print("1. Автомобиль")
print("2. Автобус")

if let opt = readLine() {
    if let num = Int(opt){
        option = num
    }else{
        print("вы ввели не число")
    }
}else{
    print("неверный ввод")
}

if option == 1 {

}


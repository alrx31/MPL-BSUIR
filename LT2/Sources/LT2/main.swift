import task1Lib
import task2Lib


while (true){
    print("Выберите номер задания, 4 - выход")
    var value = 0
    if let input = readLine(){
        if let number = Int(input){
            if number <= 3 || number >= 1{
                value = number
            }else{
                print("неверный номер задания")
            }
        }else{
            print("неверный ввод")
        }
    }else{
        print("неверный ввод")
    }

    if value != 0{
        if value == 4{
            break
        }
        if(value == 1){
            print("Введите число для нахождения факрориала")
            if let input1 = readLine() {
                if let number1 = Int(input1) {
                    let res = factorial(p: number1)                
                    print(res)
                }else{
                    print("нужно ввести число")
                }
            }else{
                print("неверный ввод")
            }
        }
        if(value == 2){
            print("Введите строку для определения полиндрома")
            if let input1 = readLine() {
                let res = isPalendromeString(input1)
                if res {
                    print(input1 + " является полиндромом")
                }else{
                    print(input1 + " не является полиндромом")
                }
            }else{
                print("неверный ввод")
            }
        }
        if(value == 3){
            print("Введите число для определения полиндрома")
            if let input1 = readLine() {
                if let number1 = Int(input1) {
                    let res = isPalendromeInt(number1)
                if res {
                    print(String(number1) + " является полиндромом")
                }else{
                    print(String(number1) + " не является полиндромом")
                }
                }else{
                    print("нужно ввести число")
                }
            }else{
                print("неверный ввод")
            }
        }

        continue

    }else{
        print("не введен номер задания")
    }
}

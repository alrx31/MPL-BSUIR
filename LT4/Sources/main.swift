import Generator 

print("Выбирете алгоритм:")
print("1. Алгоритм инкремента")
print("2. Алгоритм Фибоначчи")
print("3. Алгоритм по дате")

var opt = -1;
while opt < 1 || opt > 3 {
    if let input = readLine() {
        if let number = Int(input) {
            opt = number
        }else{
            print("Введите число")
        }
    }else{
        print("Введите число")
    }
}

var generator: GeneratorBase
var algorithm: UniqueNumberGenerateAlgorithm
if opt == 1 {
    algorithm = UniqueNumberAlg1(step: 1)
    generator = Generator(algorithm: algorithm)
}
else if opt == 2 {
    algorithm = UniqueNumberAlg2()
    generator = Generator(algorithm: algorithm)
}
else {
    algorithm = UniqueNumberAlg3()
    generator = Generator(algorithm: algorithm)
}

while true{
    print("выбирете действие:")
    print("1. Сгенерировать число")
    print("2. Сгенерировать несколько чисел")
    print("3. Выход")

    var opt = -1;

    while opt < 1 || opt > 3 {
        if let input = readLine() {
            if let number = Int(input) {
                opt = number
            }else{
                print("Введите число")
            }
        }else{
            print("Введите число")
        }
    }
    if opt == 3 {
        break
    }

    if opt == 1 {
        print(generator.generate())
    }

    if opt == 2 {
        print("Введите количество:")
        var count = -1
        while count < 1 {
            if let input = readLine() {
                if let number = Int(input) {
                    count = number
                }else{
                    print("Введите число")
                }
            }else{
                print("Введите число")
            }
        }
        print(generator.generate(count: count))
    }
}
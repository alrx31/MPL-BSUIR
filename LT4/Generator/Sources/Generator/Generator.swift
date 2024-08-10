import Foundation

public protocol UniqueNumberGenerateAlgorithm {
    func generate() -> Int
}

// like increment
public class UniqueNumberAlg1: UniqueNumberGenerateAlgorithm {
    private var currentNumber: Int = 0
    private var step: Int = 1

    public init(step: Int) {
        self.step = step
    }

    public func generate() -> Int {
        currentNumber += step
        return currentNumber
    }
}

// like Fibonacci
public class UniqueNumberAlg2: UniqueNumberGenerateAlgorithm {
    private var currentNumber: Int = 1
    private var previousNumber: Int = 1

    public init(){}
    
    public func generate() -> Int {
        let newNumber = currentNumber + previousNumber
        previousNumber = currentNumber
        currentNumber = newNumber
        return newNumber
    }
}


// by date
public class UniqueNumberAlg3: UniqueNumberGenerateAlgorithm {
    private var lastNumber: Int = 0
    public init(){}

    public func generate() -> Int {
        let newNumber = Int(Date().timeIntervalSinceNow)
        if newNumber <= lastNumber {
            lastNumber += 1
        } else {
            lastNumber = newNumber
        }
        return lastNumber
    }
}

public protocol GeneratorBase {
    var algorithm: UniqueNumberGenerateAlgorithm { get }
    func generate() -> Int
    func generate(count: Int) -> [Int]
}


public class Generator: GeneratorBase {
    public let algorithm: UniqueNumberGenerateAlgorithm

    public init(algorithm: UniqueNumberGenerateAlgorithm) {
        self.algorithm = algorithm
    }

    public func generate() -> Int {
        return algorithm.generate()
    }

    public func generate(count: Int) -> [Int] {
        var result: [Int] = []
        for _ in 0..<count {
            result.append(algorithm.generate())
        }
        return result
    }
}


public let isPalendromeString: (String)->Bool = {s in 
    return String(s.reversed()) == s; 
};

public let isPalendromeInt:(Int)->Bool = {n in 
    
    var originalNumber = n
    var reversedNumber = 0
    
    while originalNumber > 0 {
        let lastDigit = originalNumber % 10  
        reversedNumber = reversedNumber * 10 + lastDigit  
        originalNumber /= 10
    }

    return n == reversedNumber
    
}

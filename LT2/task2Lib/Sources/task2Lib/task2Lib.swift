public let isPalendromeString: (String)->Bool = {s in 
    return String(s.reversed()) == s; 
};

public let isPalendromeInt:(Int)->Bool = {n in 
    return isPalendromeString(String(n));
}

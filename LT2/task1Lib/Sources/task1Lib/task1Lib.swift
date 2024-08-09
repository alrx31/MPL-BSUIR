public func factorial(p:Int) -> Int {
    if(p <= 1){
    return p;
    }
    return factorial(p:(p-1))*p;
}
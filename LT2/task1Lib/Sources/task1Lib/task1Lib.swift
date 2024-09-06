public func factorial(p:Int) -> Int {
    if(p == 1){
     return p;
    }
    if(p == 0){
     return 1;
    }
    return factorial(p:(p-1))*p;
}
//: Playground - noun: a place where people can play
// primes between x and y
//


import UIKit

func getPrimeNumbers(val1:Int, val2:Int) -> [Any]{
    var result = [Any]()
    var counter1 = val1
    while counter1 < val2 {
        if isPrime(val: counter1){
            result.append(counter1)
        }
        counter1+=1
    }
    
    return result
}
func isPrime(val:Int)->Bool{
    var div = 2;
    while div < val{
        if val % div == 0{
            return false
        }
        div+=1
    }
    return true
}

print(getPrimeNumbers(val1: 1950, val2: 2017))
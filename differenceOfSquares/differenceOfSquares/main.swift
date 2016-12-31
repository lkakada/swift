//
//  main.swift
//  differenceOfSquares
//
//  Created by Kakada Ly on 12/29/16.
//  Copyright © 2016 Kakada Ly. All rights reserved.
//

import Foundation

class getNumber {
    var numbers : Double
    init(wholeNumber: Double) {
        numbers = [wholeNumber]
    }
    
    var sumNumber: Double{
        var total = 0.0
        for number in numbers {
            total += number
        }
        return pow(total, 2)
    }
}

let sum1 = getNumber(wholeNumber = [Double] = [1,2,3])
    print(sum1.sumNumber)

func sumNumber(numbers: Double...) -> Double{
    var total = 0.0
    for number in numbers {
        total += number
    }
    return pow(total, 2)
}
func sumOfSqure(numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += pow(number, 2)
    }
    return total
}
func comparision(sum: Double, sumDouble: Double) -> Double{
    return sum - sumDouble
}
let sum = sumNumber(numbers: 1,2,3,4,5,6,7,8,9,10)
//let sumSqure = sumOfSqure(numbers: 1,2,3,4,5,6,7,8,9,10)
//print(comparision(sum: sum, sumDouble:sumSqure))
print(sum)
//print(sumSqure)

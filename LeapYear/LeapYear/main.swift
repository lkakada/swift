//
//  main.swift
//  LeapYear
//
//  Created by Kakada Ly on 12/29/16.
//  Copyright © 2016 Kakada Ly. All rights reserved.
//

import Foundation

//Write a program that will take a year and report if it is a leap year

//Using if else condition to determine the leap year
var year = 1990
if(year%4 == 0){
    if(year%100 == 0){
        if(year%400 == 0){
            print("\(year) is the leap year")
        }else{
            print("\(year) is not the leap year")
        }
    }else{
        print("\(year) is the leap year")
    }
}else{
    print("\(year) is not the leap year")
}

//Class check leap year
class LeapYear{
    var year: Int
    init(calendarYear: Int) {
        year = calendarYear
    }
    var isLeapYear: Bool{
        return year%4 == 0 && year%100 != 0 || year%400 == 0
    }
}

//Struction check leap year
struct Year {
    var year: Int
    
    init(calendarYear: Int){
        year = calendarYear
    }
    var isLeapYear: Bool {
        return year%4 == 0 && year%100 != 0 || year%400 == 0
    }
}
var years = LeapYear(calendarYear: 1996)
    print(years.isLeapYear)

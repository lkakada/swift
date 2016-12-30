//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Create function that greets the user by name, or by saying "Hello, World!" if no name is given

func sayGreet(name: String) -> String{
    var message: String = ""
    if (name == ""){
        message = "Hello, World!"
    }else{
        message = "Hello, " + name
    }
    return message
}

//greeting function using optional
func sayGreeting(greeting: String, toName: String? = nil){
    if toName != nil{
        print("\(greeting), \(toName!)")
    }else{
        print("\(greeting), World!")
    }
}
print(sayGreet(name: "kakada"))
print(sayGreet(name: ""))

sayGreeting(greeting: "Hello", toName: "Kakada")
sayGreeting(greeting: "Hello")
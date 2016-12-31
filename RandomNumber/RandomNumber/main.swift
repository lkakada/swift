//
//  main.swift
//  RandomNumber
//
//  Created by Kakada Ly on 12/30/16.
//  Copyright © 2016 Kakada Ly. All rights reserved.
//

import Foundation
var randomNumber = 1
var userGuess: Int? = 1
var continueGuessing = true
var keepPlaying = true
var input = ""

//get keyboard for the user input and strip off the newline \n
func userInput(){
    input = NSString(data: FileHandle.standardInput.availableData, encoding: String.Encoding.utf8.rawValue)! as String //get keyboard input
    input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil) //strip off the \n
}

while keepPlaying {
    randomNumber = Int(arc4random_uniform(101)) //get a random number between 0-100
    print("The random number to guess is: \(randomNumber)")
    while continueGuessing {
        print("Pick a number between 0 and 100")
        userInput()
        userGuess = Int(input)
        if userGuess != nil {
          if userGuess == randomNumber {
            continueGuessing = false
            print("Correct Number!")
            }
            //nested if statement
            else if userGuess! > randomNumber{
                //user guessed too high
                print("Your guess is too hight")
            }
            else{
                // no reason to check if userGuess < randomNumber. It has to be.
                print("Your guess is too low")
            }
        }
        else{
            continueGuessing = true
            print("Please enter a number!")
        }
    }
        print("Play Again? Y or N")
        userInput()
        if input == "N" || input == "n" {
            keepPlaying = false
        }
    continueGuessing = true
}




















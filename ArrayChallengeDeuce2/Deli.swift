//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
       // TODO: Implement this function.
//        1. Implement this function - addNameToLine(name:)
//        It should take in a String as one of its arguments (labeled as name) and return a String.
//        In its implementation, it should add the name passed into this argument to the line stored property on the Deli class. (Exactly what that sentence means is explained when we get to the section on Classes). For now, you can see that line is created for you as an empty array of String 's. You can utilize this variable within all of the functions you create, you have full access to it.
//        If the persons name is Billy Crystal, they should be positioned at the front of the line.
//        If the persons name is Meg Ryan, they should be positioned at the front of the line.
//        Everyone else should be added to the back of the line and wait their turn.
//        The String this function should return is based on the following conditions (x represents the individuals name, y represents their position in line).
//        If the person is first in line: "Welcome x, you're first in line!"
//        If the persons name is Billy Crystal: "Welcome Billy Crystal! You can sit wherever you like."
//        If the persons name is Meg Ryan: "Welcome Meg Ryan! You can sit wherever you like."
//        Every other situation: "Welcome x, you're number y in line."
        switch name {
        case "Billy Crystal", "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            let index = line.index(of: name)!
            if (index == 0) {
                return "Welcome \(name), you're first in line!"
            }
            else {
                return "Welcome \(name), you're number \(index+1) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        // TODO: Implement this function.
//        2. Implement this function - nowServing()
//        It should take in no arguments but return back a String.
//        In its implementation the String that is returned is based on the following conditions (x represents the individuals name):
//        If the line is empty: "There is no one to be served."
//        If the line isn't empty: "Now serving x!"
//        This function should do one more thing. It should remove the individual from the deliLine that it's about to serve.
        if line.isEmpty {
            return "There is no one to be served."
        }
        else {
            let name = line.remove(at: 0)
            return "Now serving \(name)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
//        Implement this function - lineDescription()
//        This function should take no arguments but return back a String.
//        The String to be returned back is based on the following conditions:
//        If the line is empty: "The line is currently empty."
//        Otherwise, return a String beginning with the "The line is:", and appending every customer in the line on a new line \n beginning with their number in the line. For example, if our line was represented as:
//        var line = ["Albert Einstein", "Cher", "Neil deGrasse Tyson", "Yoshi"]
//        The String to be returned should look like this:
//        "The line is:
//        Albert Einstein
//        Cher
//        Neil deGrasse Tyson
//        Yoshi"
        if line.isEmpty {
            return "The line is currently empty."
        }
        else {
            var welcome = "The line is:"
            for (index, name) in line.enumerated() {
                welcome += "\n\(index+1). \(name)"
            }
            return welcome
        }
    }
    
}

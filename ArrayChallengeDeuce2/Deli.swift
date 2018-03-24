//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
var CurrentCustomer = ""
    var line: [String] = []
    // 1
    func addNameToLine(name: String) -> String {
        var Greeting = "Hello"
        CurrentCustomer = name
        if name == "Meg Ryan" || name == "Billy Crystal" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        for (index ,names) in line.enumerated() {
            if (names == "Billy Crystal" || names == "Meg Ryan") && names == CurrentCustomer {
                Greeting = ("Welcome \(names)! You can sit wherever you like.")
                
                //  return Greeting
            } else if index == 0 && names == CurrentCustomer {
                Greeting = ("Welcome \(names), you're first in line!")
                //  return Greeting
            } else if names == CurrentCustomer {
                Greeting = ("Welcome \(names), you're number \(index+1) in line.")
                //  return Greeting
                
            }
        }
        return Greeting
    }
    
    // 2
    func nowServing() -> String {
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            CurrentCustomer = line[0]
            line.remove(at: 0)
            return "Now serving \(CurrentCustomer)!"
            
        }
// return("line")
        
    }
    
    
    // 3
    

    
    func lineDescription() -> String {
        let TheLineIs = "The line is: \n"
        var customerLine = ""
        
        for (index, names) in line.enumerated() {
            customerLine.append("\(index+1). \(names)\n")
        }
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            
            return  TheLineIs + customerLine
            
        }
        return "Nothing"
    }
}

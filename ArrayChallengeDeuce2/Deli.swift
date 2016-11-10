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
        if (name == "Billy Crystal" || name == "Meg Ryan") {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        switch name {
        case "Billy Crystal":
            return ("Welcome \(name)! You can sit wherever you like.")
        case "Meg Ryan":
            return ("Welcome \(name)! You can sit wherever you like.")
        default:
            let index = line.index(of: name)
            if (index == 0) {
                return ("Welcome \(name), you're first in line!")
            } else {
                return ("Welcome \(name), you're number \(index!+1) in line.")
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return("There is no one to be served.")
        } else {
            let currentCust = line[0]
            line.remove(at: 0)
            return("Now serving \(currentCust)!")
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return("The line is currently empty.")
        } else {
            var custDesc = "The line is:"
            for (index, step) in line.enumerated() {
                custDesc += "\n\(index+1). \(step)"
            }
            return("\(custDesc)")
        }
    }
    
}

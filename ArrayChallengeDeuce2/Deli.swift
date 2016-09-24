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
        switch name {
        case "Billy Crystal", "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            if line.count == 1{
                return "Welcome \(name), you're first in line!"
            } else {
            return "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        var thingToReturn: String = ""
        // TODO: Implement this function.
        if line.isEmpty {
            thingToReturn = "There is no one to be served."
        } else {
            thingToReturn = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return thingToReturn
    }
    
    
    // 3
    func lineDescription() -> String {
        var thingToReturn: String = "The line is:"
        if line.isEmpty {
            thingToReturn = "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                thingToReturn += "\n\(index + 1). \(name)"
            }
        }
        return thingToReturn
    }
}

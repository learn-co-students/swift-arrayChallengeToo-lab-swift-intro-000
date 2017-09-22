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
        if name == "Meg Ryan" || name == "Billy Crystal" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "There is no one to be served."
        } else {
            let customer = line[0]
            line.remove(at: 0)
            return "Now serving \(customer)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var currentLine = "The line is:"
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "The line is currently empty."
        }
            for(index, name) in line.enumerated() {
                currentLine += "\n\(index + 1). \(name)"
            }
        return currentLine
    }
    
}

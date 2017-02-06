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
        
        
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        } else if name == "Billy Crystal" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }

    }
    


    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else if !line.isEmpty {
            
        }
            return "Now serving \(line.remove(at: 0))!"

    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineIs = "The line is:"
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                lineIs.append("\n\(index + 1). \(name)")
                // or this as well:  lineIs += "\n\(index + 1). \(name)"
            }
            return lineIs
        }
    
    }

    
}

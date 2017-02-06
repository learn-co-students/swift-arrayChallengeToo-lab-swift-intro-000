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
        
        var greeting: String
        
       // TODO: Implement this function.
        if name == "Meg Ryan" || name == "Billy Crystal" {
            line.insert(name, at: 0)
            greeting = "Welcome \(name)! You can sit wherever you like."
        } else if line.count > 1 {
            line.append(name)
            greeting = "Welcome \(name), you're number \(line.count) in line."
        } else {
            line.append(name)
            greeting = "Welcome \(name), you're first in line!"
        }
        return greeting
    }
    
    
    // 2
    func nowServing() -> String {
        
        var serving: String
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            serving = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return serving
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var description = "The line is:"
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        }
        for (index, name) in line.enumerated() {
            description.append("\n\(index + 1). \(name)")
        }
        return description
    }
    
}

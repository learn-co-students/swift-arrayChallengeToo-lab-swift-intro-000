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
        } else {
            let personToBeServed = line[0]
            line.remove(at: 0)
            return "Now serving \(personToBeServed)!"
            
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        var description: String = "The line is:"
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (position, person) in line.enumerated() {
                description.append("\n\(position+1). \(person)")
            }
            
        }
        return description
    }
    
}

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
                
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            
            if line[0] == name {
                return "Welcome \(name), you're first in line!"
            } else {
                let linePosition = line.index(of: name)
                return "Welcome \(name), you're number \(linePosition! + 1) in line."
            }
        }
 
    }
    
    
    // 2
    func nowServing() -> String {
        
        if !line.isEmpty {
            let nameBeingServed = line[0]
            line.remove(at: 0)
            return "Now serving \(nameBeingServed)!"
        } else {
            return "There is no one to be served."
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if !line.isEmpty {
            var descriptionOfLine = "The line is:"
            
            for (index, person) in line.enumerated() {
                descriptionOfLine.append("\n\(index + 1). \(person)")
            }
            
            return descriptionOfLine
        } else {
            return "The line is currently empty."
        }
    }
    
}

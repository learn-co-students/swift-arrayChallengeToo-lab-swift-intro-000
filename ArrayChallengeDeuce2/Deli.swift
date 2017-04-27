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
        } else {
            line.append(name)
        }
        
        switch line[0] {
        case "Billy Crystal":
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            return "Welcome Meg Ryan! You can sit wherever you like."
        case name:
            return "Welcome \(name), you're first in line!"
        default:
            return "Welcome \(name), you're number \(line.endIndex) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let nextInLine = line[0]
            line.remove(at: 0)
            return "Now serving \(nextInLine)!"
        }
    }

    
    // 3
    func lineDescription() -> String {
        
        var numbered = "The line is:"
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, step) in line.enumerated() {
                numbered += "\n\(index + 1). \(step)"
            }
            return numbered
            
            }
        }

}

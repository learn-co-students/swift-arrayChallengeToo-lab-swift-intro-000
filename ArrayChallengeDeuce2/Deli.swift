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
                
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            
            if (line.count == 1) {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if (line.isEmpty) {
            return "There is no one to be served."
        } else {
            let served = line.remove(at: 0)
            return "Now serving \(served)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if (line.isEmpty) {
            return "The line is currently empty."
        } else {
            var str: String = "The line is:"
            for (index, name) in line.enumerated() {
                
                str = str + "\n\(index + 1). " + name
                
            }
            return str
        }
    }
    
}

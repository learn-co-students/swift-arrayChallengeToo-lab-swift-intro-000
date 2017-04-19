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
                
        if name != "Meg Ryan" && name != "Billy Crystal" {
            
            line.append(name)
            
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
            
        } else if name == "Meg Ryan"{
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
            
        } else {
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            return "Now serving \(line.remove(at: 0))!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var output: String = "The line is:"
            for (index, name) in line.enumerated() {
                output += "\n\(index + 1). \(name)"
            }
            return output
        }

    }
    
}

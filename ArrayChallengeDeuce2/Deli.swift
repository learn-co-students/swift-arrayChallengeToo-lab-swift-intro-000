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
        
        var toReturn = ""
        
        switch name {
            
        case "Billy Crystal", "Meg Ryan": line.insert(name, at: 0)
            
        default: line.append(name)
            
        }
        
        for (index, name) in line.enumerated() {
            
            
            if line[0] == "Billy Crystal" {
                toReturn = "Welcome Billy Crystal! You can sit wherever you like."
            } else if line[0] == "Meg Ryan" {
                toReturn = "Welcome Meg Ryan! You can sit wherever you like."
            } else if index == 0 {
                toReturn = "Welcome \(name), you're first in line!"
            } else {
                toReturn = "Welcome \(name), you're number \(index + 1) in line."
            }
            
        }
        
        return toReturn
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        var toReturn = ""
        
        if line.isEmpty {
            toReturn = "There is no one to be served."
        } else {
            toReturn = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return toReturn
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var toReturn = "The line is:"
        
        if line.isEmpty {
            toReturn = "The line is currently empty."
        } else {
            
            for (index, name) in line.enumerated() {
                
                toReturn = "\(toReturn)" + "\n" + "\(index + 1). \(name)"
                
            }
            
        }
        
        return toReturn
        
    }
    
}

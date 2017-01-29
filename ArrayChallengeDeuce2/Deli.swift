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
            
        case "Billy Crystal":
            
            line.insert("Billy Crystal", at: 0)
            
        case "Meg Ryan":
            
            line.insert("Meg Ryan", at: 0)
            
        default:
            
            line.append(name)
        }
        
        for (index, name) in line.enumerated() {
            
            if name == "Billy Crystal" {
                
                return  "Welcome Billy Crystal! You can sit wherever you like."
                
            } else if name == "Meg Ryan" {
                
                return  "Welcome Meg Ryan! You can sit wherever you like."
                
            } else if line.count == 1 {
                
                return  "Welcome \(name), you're first in line!"
                
            } else if index == line.count - 1 {
                
                return  "Welcome \(name), you're number \(index + 1) in line."
            }
        }
        
        return ""
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        if line.isEmpty {
            
            return "There is no one to be served."
            
        } else {
            
            for (index, name) in line.enumerated() {
                
                line.remove(at: index)
                return "Now serving \(name)!"
                
            }
        }
        
        return String()

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        
        if line.isEmpty {
            
            return "The line is currently empty."
            
        } else {
            
            return "The line is:\n1. \(line[0])\n2. \(line[1])\n3. \(line[2])\n4. \(line[3])"
        }
        
        return String()

    }
    
}

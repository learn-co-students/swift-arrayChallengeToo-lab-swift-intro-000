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
        if name == "Billy Crystal" || name == "Meg Ryan" {
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
        var served = ""
        
        if line.count != 0 {
            served =  "Now serving \(line[0])!"
            line.remove(at: 0)
        } else {
            served = "There is no one to be served."
        }
        
        return served

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var lineDesc = ""
        
        if line.count != 0 {
            lineDesc = "The line is:"
            for (index, item) in line.enumerated() {
                lineDesc += "\n\(index+1). \(item)"
            }
        } else {
            lineDesc = "The line is currently empty."
        }
        
        return lineDesc


    }
    
}

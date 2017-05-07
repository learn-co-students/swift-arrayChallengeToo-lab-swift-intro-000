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
        } else {
            line.append(name)
        }
        switch name {
            case "Billy Crystal":
            return "Welcome Billy Crystal! You can sit wherever you like."
            case "Meg Ryan":
            return "Welcome Meg Ryan! You can sit wherever you like."
            default:
                if line[0] == name {
                    return "Welcome \(name), you're first in line!"
                } else {
                    return "Welcome \(name), you're number \(line.count) in line."
                }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var message: String
        
        if line.isEmpty {
            message = "There is no one to be served."
        } else {
            message = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return message
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var theLineIs: String = "The line is:"
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                theLineIs.append("\n\(index + 1). \(name)")
            }
        }
       return theLineIs
    }
    
}

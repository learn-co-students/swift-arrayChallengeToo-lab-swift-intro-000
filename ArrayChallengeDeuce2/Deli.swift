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
        
        if name == "Billy Crystal" {
            line.insert("Billy Crystal", at: 0)
            return  "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        }else { line.append(name)
        }
        if line.count == 1 && name != "Billy Crystal" || line.count == 1 && name != "Meg Ryan" {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let firstCustomer = line[0]
            line.remove(at: 0)
            return "Now serving \(firstCustomer)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var description = "The line is:"
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            
            
            for (index, name) in line.enumerated() {
                description += "\n" + "\(index + 1). \(name)"
            }
        }
        return description
    }
    
}

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
        
        if name == "Meg Ryan" || name == "Billy Crystal" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        
        if name == "Billy Crystal" {
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if name == line[0] {
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
            let currentCustomer = line[0]
            line.remove(at: 0)
            return "Now serving \(currentCustomer)!"
            
        }
        

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var lineString: String = "The line is:"
            for (index, person) in line.enumerated() {
                lineString.append("\n\(index + 1). \(person)")
            }
            return lineString
        }

        
    }
    
}

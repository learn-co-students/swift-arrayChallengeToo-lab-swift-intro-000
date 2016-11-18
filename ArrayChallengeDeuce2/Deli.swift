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
        
        if name == "Billy Crystal" {
            line.insert(name, at: 0)
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        if name == "Billy Crystal" {
            return "Welcome \(name)! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            return "Welcome \(name)! You can sit wherever you like."
        } else if line.count == 1 {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let nextToBeServed = line.remove(at: 0)
            return "Now serving \(nextToBeServed)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var lineOrder = "The line is:"
            
            for (index, person) in line.enumerated() {
                lineOrder.append("\n\(index + 1). \(person)")
            }
            
            return lineOrder
        }
    }
    
}

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
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count + 1) in line"
            }
        }
       
       // TODO: Implement this function.
        
    }
    
    
    // 2
    func nowServing() -> String {
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            line.remove(at: 0)
            return "Now serving \(line[0])!"
            
        }
        
        // TODO: Implement this function.

    }
    
    
    // 3
    func lineDescription() -> String {
        var result: String
        if line.isEmpty {
            result = "The line is currently empty."
        } else {
            result = "The line is:"
            for (index, customer) in line.enumerated() {
                result.append("\(index) \(customer)")
            }
        }
        return result
        // TODO: Implement this function.

    }
    
}

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
        if (line.count==0) {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        } else {
            if (name=="Billy Crystal" || name=="Meg Ryan") {
                line.insert(name, at: 0)
                return "Welcome \(name)! You can sit wherever you like."
            } else {
                line.append(name)
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if (line.count == 0) {
            return "There is no one to be served."
        } else {
            let result = "Now serving \(line[0])!"
            line.remove(at: 0)
            return result
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if (line.count==0) {
            return "The line is currently empty."
        } else {
            var result = "The line is:"
            for (index, person) in line.enumerated() {
                result.append("\n\(index+1). \(person)")
            }
            return result
        }
    }
    
}

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
                
       // TODO: Implement this function
        var out: String
        if( name == "Billy Crystal" || name == "Meg Ryan") {
            line.insert(name, at: 0)
            out = "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if( line.count == 1) {
                out = "Welcome \(name), you're first in line!"
            } else {
                out = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        return out
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if( line.isEmpty ) {
            return "There is no one to be served."
        }
        return "Now serving \(line.remove(at: 0))!"

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if( line.isEmpty ) {
            return "The line is currently empty."
        }
        var out = "The line is:"
        for (index,name) in line.enumerated() {
            out = out + "\n\(index+1). \(name)"
        }
        return out
    }
    
}

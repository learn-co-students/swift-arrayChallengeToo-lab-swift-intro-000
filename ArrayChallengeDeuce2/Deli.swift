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
        
        var greeting = ""
                
        // whitelist of names that are going to be in the first line
        let whitelist = ["Billy Crystal", "Meg Ryan"]
        
        if self.line.isEmpty {
            self.line.append(name)
            
            greeting = "Welcome \(name), you're first in line!"
        }
        else if whitelist.contains(name) {
            
            // insert to the first of line
            self.line.insert(name, at: 0)
            
            greeting = "Welcome \(name)! You can sit wherever you like."
            
        }
        else {
            self.line.append(name)
            
            greeting = "Welcome \(name), you're number \(self.line.count) in line."
        }
        
        return greeting
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        var message = ""
        
        if !self.line.isEmpty {
            
            message = "Now serving \(self.line[0])!"
            
            // remove from the list
            self.line.remove(at: 0)
            
        }
        else {
            message = "There is no one to be served."
        }

        return message
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var message = ""
        
        if !self.line.isEmpty {
            
            message = "The line is:"
            
            for (key, name) in self.line.enumerated() {
                message += "\n\(key+1). \(name)"
            }
            
        }
        else {
            message = "The line is currently empty."
        }
        
        return message

    }
    
}

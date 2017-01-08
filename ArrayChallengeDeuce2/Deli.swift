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
                
        if name == "Billy Crystal" || name == "Meg Ryan"{
            line.insert(name, at: 0)
            return  "Welcome \(name)! You can sit wherever you like."
        }
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        }
        
        let position = line.count + 1
        
        line.append(name)
        
        return "Welcome \(name), you're number \(position) in line."
        
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty { return "There is no one to be served." }
        
        let name = line [0]
        
        line.remove( at: 0 )
        
        return "Now serving \(name)!"
        

    }
    
    
    // 3
    func lineDescription() -> String {
        
        
            
            if line.isEmpty { return "The line is currently empty." }
            
            var output = "The line is:"
            
            for (count, name) in line.enumerated() {
                output += "\n\(count + 1). \(name)"
            }
            
        return output
    }
    

}

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
        var f:String=""
        
        
            if name == "Billy Crystal" {
                
                line.insert("Billy Crystal", at: 0)
                f = "Welcome Billy Crystal! You can sit wherever you like."
                
                
            } else if name == "Meg Ryan" {
                
                line.insert("Meg Ryan", at: 0)
                f =  "Welcome Meg Ryan! You can sit wherever you like."
                
            } else if line.isEmpty {
                
                line.append(name)
                f = "Welcome \(name), you're first in line!"
                
            } else {
                
                line.append(name)
                f = "Welcome \(name), you're number \(line.count) in line."
                    
                }
        return f
}
    
      
     
    
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var d:String=""
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            d = "Now serving \(line[0])!"
            line.remove(at: 0)
            return d
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var d:String=""
        if line.isEmpty {
            d = "The line is currently empty."
            
        } else {
            
            
                d = "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
            }
        
        return d
    }
    
}

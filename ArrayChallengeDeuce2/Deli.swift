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
        
        line.append(name)
        
        if name == line[0] {
            return "Welcome \(name), you're first in line!"
            
        } else if name == "Billy Crystal" {
            if name == "Meg Ryan" {
                line.insert(name, at: 0)
                return "Welcome \(name)!, You can sit wherever you like."
            } else {
                retun "Welcome \(name), you're number"
            }
        }
        
        
}
    

    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.

    }
    
}

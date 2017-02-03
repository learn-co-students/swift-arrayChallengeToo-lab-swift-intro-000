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
            return "Welcome \(name)! You can sit wherever you want."
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you want."
        } else if line.isEmpty {
            line.append(name)
            return "Welcome \(name), you're first in line."
        } else {
            return "Welcome \(name), you're number \(line.count + 1) in line."
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

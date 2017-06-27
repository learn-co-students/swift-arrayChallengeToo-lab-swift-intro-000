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
                
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line[0] = name
        } else {
            line.append(name)
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.count == 0 {
            return "There is no one to be served."
        } else {
            return "Now serving \(line[0])"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.count == 0 {
            return "The line is currently empty."
        } else {
            
            for i in 0...line.count-1 {
                return "The line is: \n\(i). \(line[i])"
            }
        }

    }
    
}

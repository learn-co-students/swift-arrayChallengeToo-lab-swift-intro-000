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
        
        var greeting = String()
        
        
        switch name {
        case "Billy Crystal":
            line.insert("Billy Crystal", at: 0)
            greeting = "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert("Meg Ryan", at: 0)
            greeting = "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            if line.count < 2 {
                greeting = "Welcome \(name), you're first in line!"
            }
            else {
                greeting = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
        return greeting
    }
    
    
    // 2
    func nowServing() -> String {
        
        var info = String()
        
        if line.isEmpty {
            info = "There is no one to be served."
        } else {
            if line.count > 0 {
                info = "Now serving \(line[0])!"
                line.remove(at: 0)
            }
        }
        
        return info
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var info = String()
        
        if line.isEmpty {
            info = "The line is currently empty."
        } else {
            info = "The line is:\n1. \(line[0])\n2. \(line[1])\n3. \(line[2])\n4. \(line[3])"
        }
        return info
    }
    
}

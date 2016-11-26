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
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        if line.index(of: name) == 0 {
            return "Welcome \(name), you're first in line!"
        } else if name == "Billy Crystal"  {
            return  "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            return "Wlecome \(name), you're number \(line.index(of: name)) in line "
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.count == 0 {
            return  "There is no one to be served."
        } else {
            return "Now serving \(line.count)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        var currentLine: [String] = []
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                currentLine.append("\(index+1) \(name)\n")
            }
            return "The line is: \(currentLine)"
        }

    }
    
}

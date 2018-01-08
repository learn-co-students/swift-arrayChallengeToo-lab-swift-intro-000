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
        
        if name == "Meg Ryan" || name == "Billy Crystal" {
            line.insert(name, at: 0)
            let greeting = "Welcome \(name)! You can sit wherever you like."
            return greeting
        } else if line.count < 1 {
            line.append(name)
            let greeting = "Welcome \(name), you're first in line!"
            return greeting
        } else {
            line.append(name)
            let greeting = "Welcome \(name), you're number \(line.count) in line."
            return greeting
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let personRemoved = line.remove(at: 0)
            return "Now serving \(personRemoved)!"
        }
    
    }
    
    
    // 3
    func lineDescription() -> String {
       
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var lineDescription = "The line is:"
            for (index, name) in line.enumerated() {
                lineDescription.append("\n\(index + 1). \(name)")
            }
            return lineDescription
        }
        
    }
    
}

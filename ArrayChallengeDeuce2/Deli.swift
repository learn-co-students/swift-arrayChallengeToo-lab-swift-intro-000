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
            line.insert(name, at: 0)
        } else { line.append(name)}
        
        if name == "Meg Ryan" {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if name == "Billy Crystal" {
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if line.index(of: name) == 0 {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(line.index(of: name)! + 1) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            return "Now serving \(line.remove(at: 0))!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var result: String
        if line.isEmpty {
            result = "The line is currently empty."
        } else {
            result = "The line is:"
            for (index, name) in line.enumerated() {
                result.append("\n\(index + 1). \(name)")
            }
        }
        
        return result
        
    }
    
}
